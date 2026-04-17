@php($total = count($attempt->question_order ?? []))
@php($current = min($attempt->current_index + 1, $total))
@php($endsAt = optional($attempt->endsAt()))

<div class="quiz-wrapper" id="quizWrapper"
    data-attempt-id="{{ $attempt->id }}"
    data-answer-url="{{ route('parent.children.quiz.answer', ['child' => $child->id, 'course' => $course->id, 'module' => $module->id]) }}"
    data-complete-url="{{ route('parent.children.quiz.complete', ['child' => $child->id, 'course' => $course->id, 'module' => $module->id]) }}"
    data-ends-at="{{ $endsAt ? $endsAt->toIso8601String() : '' }}">
    <div class="flex justify-between items-center mb-6 pb-4 border-b border-gray-200">
        <div>
            <h5 class="text-xl font-semibold text-gray-800 mb-1 flex items-center gap-2">
                <i class="fas fa-puzzle-piece text-[#29A7BE]"></i>
                Quiz: {{ $module->title }}
            </h5>
            <small class="text-gray-500">Question <span id="quizProgressCurrent" class="font-semibold">{{ $current }}</span> of <span id="quizProgressTotal" class="font-semibold">{{ $total }}</span></small>
        </div>
        <div class="flex items-center gap-3">
            <div class="flex items-center gap-2">
                <span class="bg-yellow-100 text-yellow-700 px-3 py-1 rounded-lg text-sm font-semibold flex items-center gap-1" id="quizTimer" title="Time remaining">
                    <i class="fas fa-hourglass-half"></i>
                    30:00
                </span>
                <span class="bg-green-100 text-green-700 px-3 py-1 rounded-lg text-sm font-semibold flex items-center gap-1" id="pointsDisplay" title="Total points">
                    <i class="fas fa-star"></i>
                    <span id="pointsNow">{{ $attempt->total_points }}</span>/<span id="pointsMax">{{ $attempt->max_points }}</span>
                </span>
            </div>
            <button class="px-4 py-2 rounded-lg bg-gray-100 text-gray-700 hover:bg-gray-200 transition font-semibold text-sm flex items-center gap-2" 
                    id="backToModuleBtn"
                    data-module-url="{{ route('parent.children.course.module', ['child' => $child->id, 'course' => $course->id, 'module' => $module->id]) }}">
                <i class="fas fa-arrow-left"></i> Back to Module
            </button>
        </div>
    </div>

    <div id="quizQuestionContainer">
        @include('parent.children._quiz_question', ['attempt' => $attempt, 'question' => $currentQuestion])
    </div>
</div>

<style>
    /* Quiz option theming */
    .quiz-wrapper .quiz-option {
        border-width: 2px !important;
        transition: all .15s ease-in-out;
        border-radius: 8px;
        padding: 12px 16px;
        margin-bottom: 12px;
        cursor: pointer;
        border: 2px solid #e2e8f0;
        background: #fff;
        color: #2d3748;
    }
    .quiz-wrapper .quiz-option:hover {
        transform: translateY(-2px);
        border-color: #29A7BE;
        box-shadow: 0 4px 12px rgba(41, 167, 190, 0.15);
    }
    .quiz-wrapper .quiz-option.active {
        color: #fff !important;
        border-color: transparent !important;
        background: linear-gradient(135deg, #88E7EA 0%, #29A7BE 100%) !important;
        box-shadow: 0 6px 18px rgba(41, 167, 190, 0.35);
    }
</style>
