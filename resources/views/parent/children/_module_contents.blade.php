@php($moduleHasContent = $module->contents->count() > 0)
@php($quizCount = $module->quizzes->count())
@php($maxPoints = $module->quizzes->sum('points'))

@if ($quizCount > 0)
    <div class="absolute top-4 right-4 z-10 flex items-center gap-3">
        <div class="bg-blue-100 text-blue-700 px-3 py-1 rounded-lg text-sm font-semibold flex items-center gap-1">
            <i class="fas fa-star"></i> {{ $maxPoints }} pts
        </div>
        <button class="bg-gradient-to-r from-green-500 to-green-600 text-white px-4 py-2 rounded-lg font-semibold hover:shadow-lg transition flex items-center gap-2" 
                id="startQuizBtn"
                data-start-url="{{ route('parent.children.quiz.start', ['child' => $child->id, 'course' => $course->id, 'module' => $module->id]) }}">
            <i class="fas fa-gamepad"></i> Start Quiz
        </button>
    </div>
    @isset($stats)
    <div class="mb-4 flex flex-wrap gap-2">
        <span class="bg-yellow-100 text-yellow-700 px-3 py-1 rounded-lg text-sm font-semibold flex items-center gap-1" title="Best score">
            <i class="fas fa-trophy"></i>{{ $stats['best_points'] }}/{{ $stats['max_points'] }} pts
        </span>
        <span class="bg-gray-100 text-gray-700 px-3 py-1 rounded-lg text-sm font-semibold flex items-center gap-1" title="Attempts">
            <i class="fas fa-redo"></i>{{ $stats['attempts'] }} tries
        </span>
        @if(!is_null($stats['last_percent']))
            <span class="bg-green-100 text-green-700 px-3 py-1 rounded-lg text-sm font-semibold" title="Last score">Last {{ $stats['last_percent'] }}%</span>
        @endif
        @if(!is_null($stats['best_percent']))
            <span class="bg-blue-100 text-blue-700 px-3 py-1 rounded-lg text-sm font-semibold" title="Best percent">Best {{ $stats['best_percent'] }}%</span>
        @endif
    </div>
    @endisset
@endif

@if ($moduleHasContent)
    @foreach ($module->contents as $content)
        <div class="content-item mb-6">
            <div class="mb-3">
                <span class="content-type-badge inline-flex items-center gap-1">
                    <i class="fas fa-{{ $content->type === 'pdf' ? 'file-pdf' : ($content->type === 'video' ? 'play' : ($content->type === 'image' ? 'image' : 'text')) }}"></i>
                    {{ strtoupper($content->type) }}
                </span>
            </div>

            @if ($content->type === 'pdf' && $content->path)
                <div class="pdf-container bg-gray-50 rounded-lg p-2">
                    <object class="pdf-frame"
                        data="{{ asset('storage/' . $content->path) }}#toolbar=0&navpanes=0&scrollbar=1&view=FitH"
                        type="application/pdf">
                        <iframe class="pdf-frame"
                            src="{{ asset('storage/' . $content->path) }}#toolbar=0&navpanes=0&scrollbar=1&view=FitH"></iframe>
                        <div class="text-center py-8">
                            <div class="mb-4">
                                <i class="fas fa-file-pdf text-red-500 text-5xl"></i>
                            </div>
                            <h6 class="text-gray-600 mb-2 font-semibold">PDF Viewer Not Supported</h6>
                            <p class="text-gray-500 text-sm mb-4">Your browser doesn't support the PDF viewer.</p>
                            <a href="{{ asset('storage/' . $content->path) }}" target="_blank" rel="noopener"
                                class="inline-block px-4 py-2 rounded-lg bg-gradient-to-r from-[#88E7EA] to-[#29A7BE] text-white font-semibold hover:shadow-lg transition">
                                <i class="fas fa-external-link-alt mr-1"></i>Open in New Tab
                            </a>
                        </div>
                    </object>
                </div>
            @elseif($content->type === 'video' && $content->path)
                <div class="video-container bg-black rounded-lg overflow-hidden">
                    <video class="video-frame" controls controlsList="nodownload noplaybackrate" disablepictureinpicture
                        playsinline preload="metadata">
                        <source src="{{ asset('storage/' . $content->path) }}" type="video/mp4">
                        <div class="text-center py-8 text-white">
                            <div class="mb-4">
                                <i class="fas fa-video text-5xl opacity-50"></i>
                            </div>
                            <h6 class="mb-2 font-semibold">Video Not Supported</h6>
                            <p class="text-sm opacity-75">Your browser does not support the video format.</p>
                        </div>
                    </video>
                </div>
            @elseif($content->type === 'image' && $content->path)
                <div class="image-container text-center bg-gray-50 rounded-lg p-4">
                    <img class="img-block mx-auto" src="{{ asset('storage/' . $content->path) }}" alt="Learning content image"
                        draggable="false">
                </div>
            @elseif($content->type === 'text' && $content->text)
                <div class="text-block bg-gray-50 rounded-lg">
                    <div class="content-text text-gray-700">
                        {!! nl2br($content->text) !!}
                    </div>
                </div>
            @endif
        </div>
    @endforeach
@else
    <div class="text-center py-12">
        <div class="mb-4">
            <i class="fas fa-folder-open text-gray-300 text-5xl"></i>
        </div>
        <h5 class="text-gray-600 mb-2 text-lg font-semibold">No Content Available</h5>
        <p class="text-gray-500 mb-1">This module doesn't have any learning materials yet.</p>
        <small class="text-gray-400">Check back later for updates!</small>
    </div>
@endif
