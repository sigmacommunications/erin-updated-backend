<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Child Learning Dashboard</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
    <link rel="stylesheet" href="{{ asset('assets/dashboard/css/style.css') }}">
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        // Prevent Tailwind from processing dynamically inserted content
        document.addEventListener('DOMContentLoaded', function() {
            // Wrap content insertion to prevent Tailwind errors
            const originalAppendChild = Node.prototype.appendChild;
            Node.prototype.appendChild = function(child) {
                try {
                    return originalAppendChild.call(this, child);
                } catch (e) {
                    if (e.message && e.message.includes('extend')) {
                        console.warn('Tailwind processing error caught and ignored:', e);
                        return child;
                    }
                    throw e;
                }
            };
        });
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* Additional custom styles */
        .no-scrollbar::-webkit-scrollbar {
            display: none;
        }
        .no-scrollbar {
            -ms-overflow-style: none;
            scrollbar-width: none;
        }
    </style>
</head>
<body class="bg-white">
    <div class="flex min-h-screen p-2">
        <!-- SIDEBAR -->
        <div id="sideBar"
            class="w-64 h-min-screen bg-[linear-gradient(90deg,#88E7EA_0%,#29A7BE_100%)] text-white rounded-r-[70px] rounded-3xl py-6 absolute left-0 transform -translate-x-full transition-transform duration-300 sm:relative sm:translate-x-0 z-40 flex flex-col justify-between">
            <div>
                <div class="flex flex-row items-center justify-between mb-6 px-6">
                    <img src="{{ asset('assets/images/logo2.png') }}" class="w-36" alt="Logo" style="opacity: .8">
                    <button id="closeBar" class="w-8 h-8 bg-white text-black rounded-full text-sm sm:hidden">
                        <i class="fa-solid fa-xmark"></i>
                    </button>
                </div>

                <p class="text-md font-semibold mb-2 px-6">LEARNING</p>
                <ul class="flex flex-col text-md">
                    <li class="px-6 py-2 flex gap-2 items-center hover:bg-white/20 hover:backdrop-blur-sm">
                        <a href="{{ route('parent.children.dashboard', session('active_child_id', 1)) }}" class="flex gap-2 items-center">
                            <img src="{{ asset('assets/dashboard/images/icon1.png') }}" class="w-4 h-4 object-cover" alt="">
                            Courses
                        </a>
                    </li>
                    <li class="px-6 py-2 flex gap-2 items-center hover:bg-white/20 hover:backdrop-blur-sm">
                        <a href="{{ route('parent.children.analytics.overall') }}" class="flex gap-2 items-center">
                            <img src="{{ asset('assets/dashboard/images/icon5.png') }}" class="w-4 h-4 object-cover" alt="">
                            Progress
                        </a>
                    </li>
                </ul>
            </div>
            <div>
                <p class="text-md font-semibold mb-2 px-6 mt-6">SYSTEM</p>
                <ul class="flex flex-col text-md px-3">
                    <li
                        class="px-3 py-2 flex gap-2 items-center hover:bg-white/20 hover:backdrop-blur-sm rounded-full border border-transparent hover:border-white">
                        <a href="{{ route('parent.children.exit') }}" class="flex gap-2 items-center">
                            <img src="{{ asset('assets/dashboard/images/icon14.png') }}" class="w-4 h-4 object-cover" alt="">
                            Exit to Parent
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- MAIN CONTENT -->
        <main class="flex-1 p-8 h-min-screen flex flex-col">
            <div class="w-full">
                <!--Collapsible Sidebar-->
                <button id="toggleBar"
                    class="absolute left-0 top-0 bg-[linear-gradient(90deg,#88E7EA_0%,#29A7BE_100%)] text-white w-8 h-8 sm:hidden z-50">
                    <i class="fa-solid fa-bars"></i>
                </button>
                <!--Collapsible Sidebar-->

                <!-- TOP BAR -->
                <div class="flex items-center mb-8 gap-8 w-full">
                    <div class="w-full">
                        <h2 class="text-md sm:text-2xl font-bold">@yield('page-title', 'Learning Dashboard')</h2>
                        <p class="text-gray-500 text-sm">@yield('page-subtitle', 'Child Learning Space')</p>
                    </div>
                </div>
            </div>
            
            <!-- Content Area -->
            <div class="w-full flex-1">
                @yield('content')
            </div>
        </main>
    </div>

    <script src="{{ asset('assets/dashboard/js/script.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <script>
        // Toastr notifications
        @if (session('success'))
            toastr.success("{{ session('success') }}");
        @endif
        @if (session('error'))
            toastr.error("{{ session('error') }}");
        @endif
        @if (session('info'))
            toastr.info("{{ session('info') }}");
        @endif
        @if ($errors->any())
            @foreach ($errors->all() as $error)
                toastr.error("{{ $error }}");
            @endforeach
        @endif
    </script>
    @yield('scripts')
</body>
</html>
