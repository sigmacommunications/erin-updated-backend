@extends('child.layout.app')

@section('page-title', $course->title)
@section('page-subtitle', 'Learning as ' . $child->name)

@section('content')
    <div class="w-full">
        <!-- Course Header Stats -->
        @isset($courseStats)
            <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-6">
                <div class="bg-white rounded-xl shadow-[3px_3px_20px_rgba(3,13,38,0.07)] p-4">
                    <div class="flex items-center gap-3">
                        <div class="w-12 h-12 rounded-full bg-gradient-to-br from-yellow-400 to-yellow-600 flex items-center justify-center">
                            <i class="fas fa-trophy text-white"></i>
                        </div>
                        <div>
                            <p class="text-gray-500 text-xs mb-1">Best Score</p>
                            <p class="text-lg font-bold text-gray-800">{{ $courseStats['best_points'] }}/{{ $courseStats['max_points'] }} pts</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white rounded-xl shadow-[3px_3px_20px_rgba(3,13,38,0.07)] p-4">
                    <div class="flex items-center gap-3">
                        <div class="w-12 h-12 rounded-full bg-gradient-to-br from-blue-400 to-blue-600 flex items-center justify-center">
                            <i class="fas fa-redo text-white"></i>
                        </div>
                        <div>
                            <p class="text-gray-500 text-xs mb-1">Attempts</p>
                            <p class="text-lg font-bold text-gray-800">{{ $courseStats['attempts'] }}</p>
                        </div>
                    </div>
                </div>
                @if(!is_null($courseStats['avg_percent']))
                    <div class="bg-white rounded-xl shadow-[3px_3px_20px_rgba(3,13,38,0.07)] p-4">
                        <div class="flex items-center gap-3">
                            <div class="w-12 h-12 rounded-full bg-gradient-to-br from-green-400 to-green-600 flex items-center justify-center">
                                <i class="fas fa-chart-line text-white"></i>
                            </div>
                            <div>
                                <p class="text-gray-500 text-xs mb-1">Average Score</p>
                                <p class="text-lg font-bold text-gray-800">{{ $courseStats['avg_percent'] }}%</p>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        @endisset

        <div class="grid grid-cols-1 lg:grid-cols-4 gap-6">
            <!-- Modules Sidebar -->
            <div class="lg:col-span-1">
                <div class="bg-white rounded-xl shadow-[3px_3px_20px_rgba(3,13,38,0.07)] overflow-hidden">
                    @if ($course->thumbnail)
                        <img src="{{ asset("storage/$course->thumbnail") }}" class="w-full h-40 object-cover" alt="{{ $course->title }}">
                    @endif
                    <div class="p-4">
                        <h5 class="font-semibold text-lg mb-2 flex items-center gap-2">
                            <i class="fas fa-list text-[#29A7BE]"></i>Course Modules
                        </h5>
                        <p class="text-gray-500 text-xs mb-4">Select a module to view content</p>
                        <div class="space-y-2 module-sidebar-scroll">
                            @forelse($course->modules as $module)
                                @php($isLocked = ($lockedModules[$module->id] ?? false))
                                <a href="#" 
                                   class="block p-3 rounded-lg border border-gray-200 hover:border-[#29A7BE] hover:bg-[#29A7BE]/5 transition module-item {{ $isLocked ? 'opacity-50 cursor-not-allowed' : 'cursor-pointer' }}"
                                   data-module-id="{{ $module->id }}" 
                                   title="{{ $isLocked ? 'Locked until previous quiz is submitted' : 'Open '.$module->title }}" 
                                   {{ $isLocked ? 'data-locked=1' : '' }}>
                                    <div class="flex items-start justify-between gap-2">
                                        <div class="flex-1">
                                            <div class="flex items-center gap-2 mb-1">
                                                <span class="text-xs font-semibold bg-[#29A7BE] text-white px-2 py-0.5 rounded">#{{ $module->order }}</span>
                                                <h6 class="text-sm font-semibold text-gray-800 flex items-center gap-1">
                                                    @if($isLocked)
                                                        <i class="fas fa-lock text-gray-400 text-xs"></i>
                                                    @endif
                                                    {{ \Illuminate\Support\Str::limit($module->title, 25) }}
                                                </h6>
                                            </div>
                                            <p class="text-xs text-gray-500 mb-2">
                                                {{ \Illuminate\Support\Str::limit($module->description, 50) }}
                                            </p>
                                            <div class="flex items-center gap-2 flex-wrap">
                                                <span class="text-xs text-gray-400">
                                                    <i class="fas fa-file-alt mr-1"></i>{{ $module->contents->count() }} Content{{ $module->contents->count() !== 1 ? 's' : '' }}
                                                </span>
                                                @isset($quizStats)
                                                    @php($s = $quizStats[$module->id] ?? null)
                                                    @if($s)
                                                        <span class="text-xs bg-blue-100 text-blue-700 px-2 py-0.5 rounded">
                                                            <i class="fas fa-star mr-1"></i>{{ $s['best_points'] }}/{{ $s['max_points'] }}
                                                        </span>
                                                        <span class="text-xs bg-gray-100 text-gray-700 px-2 py-0.5 rounded">
                                                            <i class="fas fa-redo mr-1"></i>{{ $s['attempts'] }}
                                                        </span>
                                                    @endif
                                                @endisset
                                            </div>
                                        </div>
                                        <i class="fas fa-chevron-right text-gray-400 text-xs mt-1"></i>
                                    </div>
                                </a>
                            @empty
                                <div class="p-4 text-center text-gray-400">
                                    <i class="fas fa-folder-open text-2xl mb-2 opacity-50"></i>
                                    <p class="text-xs">No modules available yet.</p>
                                </div>
                            @endforelse
                        </div>
                    </div>
                </div>
            </div>

            <!-- Content Viewer -->
            <div class="lg:col-span-3">
                <div class="bg-white rounded-xl shadow-[3px_3px_20px_rgba(3,13,38,0.07)] overflow-hidden">
                    <div class="p-4 border-b border-gray-200">
                        <div class="flex items-center justify-between">
                            <h5 class="font-semibold text-lg flex items-center gap-2">
                                <i class="fas fa-play-circle text-[#29A7BE]"></i>
                                Module: <span id="currentModuleTitle" class="text-[#29A7BE]">Select a module</span>
                            </h5>
                            <span class="text-xs text-gray-500 flex items-center gap-1">
                                <i class="fas fa-shield-alt"></i>Content protected
                            </span>
                        </div>
                    </div>
                    <div class="p-6 position-relative min-h-[500px] max-h-[calc(100vh-300px)] overflow-y-auto theme-scroll">
                        <style>
                            .content-viewer * {
                                -webkit-user-select: none;
                                user-select: none;
                            }

                            .content-viewer {
                                position: relative;
                                border-radius: 8px;
                            }

                            .no-context {
                                -webkit-touch-callout: none;
                            }

                            .pdf-frame {
                                width: 100%;
                                height: 520px;
                                border: none;
                                border-radius: 8px;
                            }

                            .video-frame {
                                width: 100%;
                                max-height: 520px;
                                background: #000;
                                border-radius: 8px;
                            }

                            .text-block {
                                padding: 20px;
                                border-radius: 8px;
                                line-height: 1.6;
                                font-size: 16px;
                                background: #f7fafc;
                                color: #2d3748;
                                border: 1px solid #e2e8f0;
                            }

                            .img-block {
                                max-width: 100%;
                                border-radius: 8px;
                                box-shadow: 0 4px 6px rgba(0, 0, 0, .1);
                            }

                            .content-item {
                                margin-bottom: 24px;
                            }

                            .content-type-badge {
                                background: linear-gradient(135deg, #88E7EA 0%, #29A7BE 100%);
                                color: white;
                                border-radius: 20px;
                                padding: 4px 12px;
                                font-size: 12px;
                                font-weight: 600;
                                text-transform: uppercase;
                                letter-spacing: 0.5px;
                            }

                            .loading-overlay {
                                background: rgba(0, 0, 0, .7);
                                backdrop-filter: blur(4px);
                                border-radius: 8px;
                            }

                            /* Custom Scrollbar Styles */
                            .theme-scroll::-webkit-scrollbar {
                                width: 8px;
                            }

                            .theme-scroll::-webkit-scrollbar-track {
                                background: transparent;
                                border-radius: 10px;
                            }

                            .theme-scroll::-webkit-scrollbar-thumb {
                                background-color: #29A7BE;
                                border-radius: 9999px;
                                border: 2px solid transparent;
                                background-clip: padding-box;
                            }

                            .theme-scroll::-webkit-scrollbar-thumb:hover {
                                background-color: #1e8fa3;
                            }

                            /* Firefox */
                            .theme-scroll {
                                scrollbar-width: thin;
                                scrollbar-color: #29A7BE transparent;
                            }

                            /* Module sidebar scrollbar */
                            .module-sidebar-scroll {
                                max-height: 500px;
                                overflow-y: auto;
                            }

                            .module-sidebar-scroll::-webkit-scrollbar {
                                width: 6px;
                            }

                            .module-sidebar-scroll::-webkit-scrollbar-track {
                                background: #f1f1f1;
                                border-radius: 10px;
                            }

                            .module-sidebar-scroll::-webkit-scrollbar-thumb {
                                background-color: #29A7BE;
                                border-radius: 9999px;
                            }

                            .module-sidebar-scroll::-webkit-scrollbar-thumb:hover {
                                background-color: #1e8fa3;
                            }

                            .module-sidebar-scroll {
                                scrollbar-width: thin;
                                scrollbar-color: #29A7BE #f1f1f1;
                            }
                        </style>

                        <!-- Loading Overlay -->
                        <div id="loadingOverlay"
                            class="hidden absolute w-full h-full top-0 left-0 z-10 items-center justify-center loading-overlay">
                            <div class="text-center text-white">
                                <div class="animate-spin rounded-full h-12 w-12 border-b-2 border-white mb-3 mx-auto"></div>
                                <div class="text-lg font-semibold">Loading module content...</div>
                                <small class="opacity-75">Please wait while we prepare your learning materials</small>
                            </div>
                        </div>

                        <!-- Content Viewer -->
                        <div class="content-viewer no-context" id="contentViewer" data-tailwind-ignore>
                            <div class="text-center py-12">
                                <div class="mb-4">
                                    <i class="fas fa-mouse-pointer text-gray-300 text-5xl"></i>
                                </div>
                                <h5 class="text-gray-500 mb-2 text-lg font-semibold">Select a Module</h5>
                                <p class="text-gray-400">Choose a module from the sidebar to start learning</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        (function() {
            // Global error handler to catch Tailwind/extend errors
            window.addEventListener('error', function(e) {
                if (e.message && (e.message.includes('extend') || e.message.includes('Cannot read properties'))) {
                    console.warn('Suppressed error:', e.message);
                    e.preventDefault();
                    return true;
                }
            }, true);
            
            const viewer = document.getElementById('contentViewer');
            if (!viewer) return;

            // Enhanced security measures
            viewer.addEventListener('contextmenu', function(e) {
                e.preventDefault();
            });
            document.addEventListener('contextmenu', function(e) {
                if (viewer.contains(e.target)) e.preventDefault();
            }, true);

            document.addEventListener('keydown', function(e) {
                const isCtrl = e.ctrlKey || e.metaKey;
                if ((isCtrl && ['s', 'p', 'c', 'x', 'u', 'a'].includes(e.key.toLowerCase())) ||
                    e.key === 'PrintScreen' || e.key === 'F12') {
                    e.preventDefault();
                    e.stopPropagation();
                }
            }, true);

            document.addEventListener('selectstart', function(e) {
                if (viewer.contains(e.target)) e.preventDefault();
            }, true);

            document.addEventListener('dragstart', function(e) {
                if (viewer.contains(e.target)) e.preventDefault();
            }, true);

            // Module loading functionality
            const items = document.querySelectorAll('.module-item');
            const titleEl = document.getElementById('currentModuleTitle');
            const contentViewer = document.getElementById('contentViewer');
            const overlay = document.getElementById('loadingOverlay');
            const moduleUrlTpl =
                "{{ route('parent.children.course.module', ['child' => $child->id, 'course' => $course->id, 'module' => '__MID__']) }}";

            function setLoading(isLoading) {
                if (!overlay) return;
                if (isLoading) {
                    overlay.classList.remove('hidden');
                    overlay.classList.add('flex');
                } else {
                    overlay.classList.add('hidden');
                    overlay.classList.remove('flex');
                }
            }

            function activateItem(moduleId) {
                items.forEach((el) => {
                    const isActive = el.getAttribute('data-module-id') == moduleId;
                    if (isActive) {
                        el.classList.add('bg-[#29A7BE]/10', 'border-[#29A7BE]');
                        el.classList.remove('border-gray-200');
                    } else {
                        el.classList.remove('bg-[#29A7BE]/10', 'border-[#29A7BE]');
                        el.classList.add('border-gray-200');
                    }
                });
            }

            async function loadModule(moduleId, title) {
                if (titleEl) titleEl.textContent = title || 'Select a module';
                activateItem(moduleId);
                setLoading(true);

                const failsafeTimeout = setTimeout(() => {
                    console.warn('Failsafe timeout - hiding loading overlay');
                    setLoading(false);
                }, 15000);

                try {
                    const url = moduleUrlTpl.replace('__MID__', moduleId);
                    const res = await fetch(url, {
                        headers: {
                            'Accept': 'text/html',
                            'X-Requested-With': 'XMLHttpRequest'
                        }
                    });

                    if (!res.ok) {
                        throw new Error(`HTTP ${res.status}: ${res.statusText}`);
                    }

                    const html = await res.text();
                    
                    // Clear previous content first
                    contentViewer.innerHTML = '';
                    
                    // Insert content with error handling
                    try {
                        // Use a safer method to insert HTML
                        const parser = new DOMParser();
                        const doc = parser.parseFromString(html, 'text/html');
                        const bodyContent = doc.body;
                        
                        // Remove any script tags to prevent execution issues
                        const scripts = bodyContent.querySelectorAll('script');
                        scripts.forEach(script => script.remove());
                        
                        // Create a document fragment for better performance
                        const fragment = document.createDocumentFragment();
                        while (bodyContent.firstChild) {
                            fragment.appendChild(bodyContent.firstChild);
                        }
                        
                        // Append fragment to content viewer
                        contentViewer.appendChild(fragment);
                        
                    } catch (parseError) {
                        console.error('Error parsing HTML:', parseError);
                        // Fallback: remove scripts and use innerHTML
                        const cleanHtml = html.replace(/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi, '');
                        contentViewer.innerHTML = cleanHtml;
                    }

                    // Update URL
                    const u = new URL(window.location.href);
                    u.searchParams.set('module', moduleId);
                    window.history.replaceState({}, '', u.toString());
                    // Show success message
                    

                } catch (e) {
                    console.error('Error loading module:', e);
                    const errorMessage = e.message || 'Unknown error occurred';
                    contentViewer.innerHTML = `
                        <div class="text-center py-12">
                            <div class="mb-4">
                                <i class="fas fa-exclamation-triangle text-yellow-500 text-5xl"></i>
                            </div>
                            <h5 class="text-gray-600 mb-2 text-lg font-semibold">Could not load module</h5>
                            <p class="text-gray-500 mb-4">${errorMessage}</p>
                            <button class="px-4 py-2 rounded-lg bg-[#29A7BE] text-white hover:bg-[#29A7BE]/90 transition" onclick="location.reload()">
                                <i class="fas fa-redo mr-1"></i>Try Again
                            </button>
                        </div>
                    `;
                    
                } finally {
                    clearTimeout(failsafeTimeout);
                    setLoading(false);
                }
            }

            // ------- Quiz Helpers -------
            function getCsrf(){
                const m = document.querySelector('meta[name="csrf-token"]');
                return m ? m.getAttribute('content') : '';
            }

            function pad(n){ return n<10 ? '0'+n : ''+n; }

            function initQuizUI(){
                const wrapper = document.getElementById('quizWrapper');
                if (!wrapper) return;
                const attemptId = wrapper.getAttribute('data-attempt-id');
                const answerUrl = wrapper.getAttribute('data-answer-url');
                const completeUrl = wrapper.getAttribute('data-complete-url');
                const endsAtIso = wrapper.getAttribute('data-ends-at');

                // Timer
                if (endsAtIso){
                    const el = document.getElementById('quizTimer');
                    const end = new Date(endsAtIso).getTime();
                    const tick = () => {
                        const now = Date.now();
                        let diff = Math.floor((end - now) / 1000);
                        if (diff <= 0) {
                            el.textContent = '00:00';
                            clearInterval(timer);
                            // finalize
                            fetch(completeUrl, { method: 'POST', headers: { 'X-CSRF-TOKEN': getCsrf(), 'Accept':'application/json' }, body: new URLSearchParams({ attempt_id: attemptId }) })
                                .then(r=>r.json())
                                .then(data=>{ if (data && data.html){ document.getElementById('quizQuestionContainer').innerHTML = data.html; } });
                            return;
                        }
                        const m = Math.floor(diff/60); const s = diff%60;
                        el.textContent = pad(m)+':'+pad(s);
                    };
                    tick();
                    const timer = setInterval(tick, 1000);
                }

                // Bind answer form submit
                const form = document.getElementById('quizAnswerForm');
                if (form){
                    const submitBtn = document.getElementById('submitAnswerBtn');
                    const inputs = form.querySelectorAll('input[name="selected_answer"]');
                    const labels = form.querySelectorAll('label.quiz-option');
                    if (submitBtn) submitBtn.disabled = true;
                    inputs.forEach(i=> i.addEventListener('change', (ev)=>{
                        if (submitBtn) submitBtn.disabled = false;
                        // Fallback: toggle active class to reflect selection
                        labels.forEach(l => l.classList.remove('active'));
                        const lbl = ev.target.closest('label.quiz-option');
                        if (lbl) lbl.classList.add('active');
                    }));

                    form.addEventListener('submit', async function(e){
                        e.preventDefault();
                        if (submitBtn){ submitBtn.disabled = true; submitBtn.innerHTML = '<span class="animate-spin inline-block w-4 h-4 border-2 border-white border-t-transparent rounded-full mr-1"></span> Submitting...'; }
                        const fd = new FormData(form);
                        fd.append('attempt_id', attemptId);
                        try{
                            const res = await fetch(answerUrl, { method: 'POST', headers: { 'X-CSRF-TOKEN': getCsrf(), 'Accept':'application/json' }, body: fd });
                            const data = await res.json();
                            if ((data.status === 'ok' || data.status === 'completed' || data.status === 'expired') && data.html){
                                document.getElementById('quizQuestionContainer').innerHTML = data.html;
                                if (data.progress){
                                    const pc = document.getElementById('quizProgressCurrent');
                                    if (pc) pc.textContent = data.progress.current;
                                    const pn = document.getElementById('pointsNow');
                                    if (pn) pn.textContent = data.progress.points;
                                    const pm = document.getElementById('pointsMax');
                                    if (pm && data.progress.max) pm.textContent = data.progress.max;
                                    const timer = document.getElementById('quizTimer');
                                    if (timer && (data.status === 'completed' || data.status === 'expired')) timer.textContent = '00:00';
                                }
                                initQuizUI(); // bind new DOM
                                if (window.toastr) toastr.success('Answer submitted');
                            } else {
                                if (window.toastr) toastr.error('Could not submit answer');
                            }
                        } catch (err){
                            console.error(err);
                            if (window.toastr) toastr.error('Error submitting answer');
                        } finally {
                            if (submitBtn){ submitBtn.disabled = false; submitBtn.textContent = 'Submit & Next'; }
                        }
                    });
                }
            }

            // Event delegation for quiz buttons
            document.addEventListener('click', async function(e){
                const target = e.target.closest('#startQuizBtn');
                if (target && viewer.contains(target)){
                    e.preventDefault();
                    const url = target.getAttribute('data-start-url');
                    try{
                        const res = await fetch(url, { 
                            method: 'POST', 
                            headers: { 
                                'X-CSRF-TOKEN': getCsrf(), 
                                'Accept':'text/html',
                                'X-Requested-With': 'XMLHttpRequest'
                            } 
                        });
                        const html = await res.text();
                        viewer.innerHTML = '';
                        try {
                            const parser = new DOMParser();
                            const doc = parser.parseFromString(html, 'text/html');
                            const bodyContent = doc.body;
                            const scripts = bodyContent.querySelectorAll('script');
                            scripts.forEach(script => script.remove());
                            const fragment = document.createDocumentFragment();
                            while (bodyContent.firstChild) {
                                fragment.appendChild(bodyContent.firstChild);
                            }
                            viewer.appendChild(fragment);
                        } catch (parseError) {
                            console.error('Error parsing HTML:', parseError);
                            viewer.innerHTML = html.replace(/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi, '');
                        }
                        initQuizUI();
                    } catch (err){
                        console.error(err);
                        if (window.toastr) toastr.error('Could not start quiz');
                    }
                    return;
                }

                const back = e.target.closest('#backToModuleBtn, #summaryBackBtn');
                if (back && viewer.contains(back)){
                    e.preventDefault();
                    const url = back.getAttribute('data-module-url');
                    try{
                        const res = await fetch(url, { 
                            headers: { 
                                'Accept': 'text/html',
                                'X-Requested-With': 'XMLHttpRequest'
                            } 
                        });
                        const html = await res.text();
                        viewer.innerHTML = '';
                        try {
                            const parser = new DOMParser();
                            const doc = parser.parseFromString(html, 'text/html');
                            const bodyContent = doc.body;
                            const scripts = bodyContent.querySelectorAll('script');
                            scripts.forEach(script => script.remove());
                            const fragment = document.createDocumentFragment();
                            while (bodyContent.firstChild) {
                                fragment.appendChild(bodyContent.firstChild);
                            }
                            viewer.appendChild(fragment);
                        } catch (parseError) {
                            console.error('Error parsing HTML:', parseError);
                            viewer.innerHTML = html.replace(/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi, '');
                        }
                    } catch (err){ 
                        console.error(err);
                        if (window.toastr) toastr.error('Could not load module content');
                    }
                    return;
                }
            });

            // Event listeners for module items
            items.forEach((el) => {
                el.addEventListener('click', function(e) {
                    e.preventDefault();
                    if (this.hasAttribute('data-locked')){
                        if (window.toastr) toastr.info('This module is locked until the previous module\'s quiz is submitted.');
                        return;
                    }
                    const id = this.getAttribute('data-module-id');
                    const t = this.querySelector('h6')?.textContent?.trim() || 'Module';
                    if (id) loadModule(id, t);
                });
            });

            // Auto-load initial module
            const params = new URLSearchParams(window.location.search);
            let initial = params.get('module');
            if (!initial && items.length){
                const firstUnlocked = Array.from(items).find(x => !x.hasAttribute('data-locked'));
                if (firstUnlocked) initial = firstUnlocked.getAttribute('data-module-id');
            }
            if (initial) {
                const initialEl = Array.from(items).find(x => x.getAttribute('data-module-id') == initial);
                const t = initialEl ? (initialEl.querySelector('h6')?.textContent?.trim() || 'Module') : 'Module';
                loadModule(initial, t);
            }
        })();
    </script>
@endsection
