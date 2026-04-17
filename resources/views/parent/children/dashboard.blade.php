@extends('child.layout.app')

@section('page-title', $child->name . "'s Learning Dashboard")
@section('page-subtitle', 'Welcome back! Continue your learning journey')

@section('content')
    <div class="w-full">
        <!-- Courses Section -->
        @if($purchases->count() > 0)
            <!-- VIDEO CARDS -->
            <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-10 w-full">
                @foreach($purchases as $p)
                    @php($course = $p->course)
                    @if ($course)
                        <!-- Card -->
                        <div class="bg-white rounded-xl shadow-[3px_3px_20px_rgba(3,13,38,0.07)] p-4">
                            <div class="relative rounded-lg overflow-hidden">
                                @if ($course->thumbnail)
                                    <img src="{{ asset("storage/$course->thumbnail") }}" class="h-40 w-full object-cover" alt="{{ $course->title }}">
                                @else
                                    <div class="h-40 w-full bg-gradient-to-br from-[#88E7EA] to-[#29A7BE] flex items-center justify-center">
                                        <i class="fas fa-book text-white text-4xl"></i>
                                    </div>
                                @endif
                                <div class="absolute bottom-2 right-2 text-white text-xs px-2 py-1 rounded bg-black/50">
                                    <i class="fas fa-layer-group mr-1"></i>{{ $course->modules->count() }} Modules
                                </div>
                                <div class="absolute inset-0 flex items-center justify-center">
                                    <a href="{{ route('parent.children.course', [$child, $course]) }}" 
                                       class="bg-white/15 backdrop-blur-sm w-12 h-12 flex items-center justify-center border border-white rounded-full hover:bg-white/25 transition">
                                        <i class="fa-solid fa-play text-white text-md"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="flex items-center justify-between py-2">
                                <div class="flex items-center gap-4">
                                    <div class="w-8">
                                        <div class="w-8 h-8 rounded-full bg-gradient-to-br from-[#88E7EA] to-[#29A7BE] flex items-center justify-center text-white text-xs font-bold">
                                            {{ substr($course->title, 0, 1) }}
                                        </div>
                                    </div>
                                    <div class="w-84">
                                        <h3 class="font-semibold text-sm">{{ \Illuminate\Support\Str::limit($course->title, 25) }}</h3>
                                    </div>
                                </div>
                                <div>
                                    <div class="w-12 text-right relative">
                                        <i class="fa-solid fa-ellipsis-vertical text-gray-400"></i>
                                    </div>
                                </div>
                            </div>

                            <p class="text-sm font-light text-black mb-4">
                                {{ \Illuminate\Support\Str::limit($course->description, 80) }}
                            </p>
                            <div class="flex justify-start items-center gap-3 mb-3">
                                <p class="m-0 text-sm font-light text-gray-500">
                                    <i class="fas fa-star text-yellow-400 mr-1"></i>Premium
                                </p>
                                <i class="fa-solid fa-circle text-[#636363] text-[5px]"></i>
                                <p class="m-0 text-sm font-light text-gray-500">
                                    <i class="fas fa-check-circle text-green-500 mr-1"></i>Enrolled
                                </p>
                            </div>
                            <a href="{{ route('parent.children.course', [$child, $course]) }}"
                               class="block w-full text-center py-2 rounded-lg bg-gradient-to-r from-[#88E7EA] to-[#29A7BE] text-white font-semibold hover:shadow-lg transition">
                                <i class="fas fa-play mr-1"></i>Start Learning
                            </a>
                        </div>
                    @endif
                @endforeach
            </div>

            <!-- Quick Stats -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-10">
                <div class="bg-white rounded-xl shadow-[3px_3px_20px_rgba(3,13,38,0.07)] p-6">
                    <div class="flex items-center gap-4">
                        <div class="w-16 h-16 rounded-full bg-gradient-to-br from-blue-400 to-blue-600 flex items-center justify-center">
                            <i class="fas fa-book text-white text-2xl"></i>
                        </div>
                        <div>
                            <p class="text-gray-500 text-sm mb-1">Total Courses</p>
                            <h3 class="text-2xl font-bold text-gray-800">{{ $purchases->count() }}</h3>
                        </div>
                    </div>
                </div>
                <div class="bg-white rounded-xl shadow-[3px_3px_20px_rgba(3,13,38,0.07)] p-6">
                    <div class="flex items-center gap-4">
                        <div class="w-16 h-16 rounded-full bg-gradient-to-br from-green-400 to-green-600 flex items-center justify-center">
                            <i class="fas fa-layer-group text-white text-2xl"></i>
                        </div>
                        <div>
                            <p class="text-gray-500 text-sm mb-1">Total Modules</p>
                            <h3 class="text-2xl font-bold text-gray-800">{{ $purchases->sum(function($p) { return $p->course ? $p->course->modules->count() : 0; }) }}</h3>
                        </div>
                    </div>
                </div>
                <div class="bg-white rounded-xl shadow-[3px_3px_20px_rgba(3,13,38,0.07)] p-6">
                    <div class="flex items-center gap-4">
                        <div class="w-16 h-16 rounded-full bg-gradient-to-br from-yellow-400 to-yellow-600 flex items-center justify-center">
                            <i class="fas fa-trophy text-white text-2xl"></i>
                        </div>
                        <div>
                            <p class="text-gray-500 text-sm mb-1">Learning Progress</p>
                            <h3 class="text-2xl font-bold text-gray-800">Active</h3>
                        </div>
                    </div>
                </div>
            </div>
        @else
            <div class="bg-white rounded-xl shadow-[3px_3px_20px_rgba(3,13,38,0.07)] p-12 text-center">
                <div class="mb-6">
                    <div class="w-24 h-24 rounded-full bg-gradient-to-br from-gray-200 to-gray-300 flex items-center justify-center mx-auto">
                        <i class="fas fa-book-open text-gray-400 text-4xl"></i>
                    </div>
                </div>
                <h5 class="text-gray-600 mb-2 text-xl font-semibold">No Courses Yet</h5>
                <p class="text-gray-500 mb-6">Ask your parent to purchase some courses for you to start learning!</p>
                <a href="{{ route('parent.dashboard') }}" class="inline-block px-6 py-3 rounded-lg bg-gradient-to-r from-[#88E7EA] to-[#29A7BE] text-white font-semibold hover:shadow-lg transition">
                    <i class="fas fa-shopping-cart mr-2"></i>Browse Courses
                </a>
            </div>
        @endif
    </div>
@endsection
