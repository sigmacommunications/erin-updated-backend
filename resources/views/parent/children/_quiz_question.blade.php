@php($total = count($attempt->question_order ?? []))
@php($index = $attempt->current_index)
@php($qNum = $index + 1)
@if(!$question)
    <div class="bg-blue-50 border border-blue-200 rounded-lg p-4 text-blue-700">
        <i class="fas fa-info-circle mr-2"></i>No more questions.
    </div>
@else
    <div class="bg-white rounded-xl shadow-[3px_3px_20px_rgba(3,13,38,0.07)] p-6">
        <div class="flex justify-between items-center mb-4">
            <div class="bg-[#29A7BE] text-white px-3 py-1 rounded-lg text-sm font-semibold">Question {{ $qNum }} of {{ $total }}</div>
            <div class="bg-green-100 text-green-700 px-3 py-1 rounded-lg text-sm font-semibold flex items-center gap-1" title="Points for this question">
                <i class="fas fa-star"></i>{{ $question->points }} pts
            </div>
        </div>
        <h5 class="text-xl font-semibold text-gray-800 mb-6">{{ $question->question }}</h5>

        <form id="quizAnswerForm">
            <input type="hidden" name="quiz_id" value="{{ $question->id }}">

            @if($question->type === 'true_false')
                <div class="flex gap-3 mb-4">
                    <label class="flex-1 quiz-option cursor-pointer">
                        <input type="radio" name="selected_answer" value="true" autocomplete="off" class="hidden"> 
                        <div class="text-center py-3 rounded-lg border-2 border-gray-200 hover:border-[#29A7BE] transition">
                            True
                        </div>
                    </label>
                    <label class="flex-1 quiz-option cursor-pointer">
                        <input type="radio" name="selected_answer" value="false" autocomplete="off" class="hidden"> 
                        <div class="text-center py-3 rounded-lg border-2 border-gray-200 hover:border-[#29A7BE] transition">
                            False
                        </div>
                    </label>
                </div>
            @elseif($question->type === 'multiple_choice')
                @php($letters = ['A','B','C','D','E','F','G','H'])
                @php($idx = 0)
                <div class="space-y-3">
                    @foreach(($question->options ?? []) as $opt)
                        @php($opt = is_string($opt) ? trim($opt) : $opt)
                        @if($opt !== null && $opt !== '')
                            @php($letter = $letters[$idx] ?? chr(65 + $idx))
                            @php($idx++)
                            <label class="block quiz-option cursor-pointer">
                                <input type="radio" class="hidden" name="selected_answer" value="{{ $letter }}" autocomplete="off">
                                <div class="flex items-center gap-3 p-4 rounded-lg border-2 border-gray-200 hover:border-[#29A7BE] transition">
                                    <span class="w-8 h-8 rounded-full bg-[#29A7BE] text-white flex items-center justify-center font-bold text-sm">{{ $letter }}</span>
                                    <span class="flex-1 text-gray-700">{{ $opt }}</span>
                                </div>
                            </label>
                        @endif
                    @endforeach
                </div>
            @endif

            <div class="flex justify-end mt-6">
                <button type="submit" id="submitAnswerBtn" class="px-6 py-3 rounded-lg bg-gradient-to-r from-[#88E7EA] to-[#29A7BE] text-white font-semibold hover:shadow-lg transition flex items-center gap-2">
                    Submit & Next <i class="fas fa-arrow-right"></i>
                </button>
            </div>
        </form>
    </div>
@endif
