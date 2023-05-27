/* External dependencies*/
import 'package:freezed_annotation/freezed_annotation.dart';

/* Local dependencies*/
import '../models/quiz.dart';

part 'test_state.freezed.dart';

@freezed
class TestState with _$TestState {
  factory TestState({
    @Default(false) bool loading,
    @Default([]) List<Question> questions,
    @Default([]) List<Question> modifiedQuestions,
    @Default([]) List<UserAnswer> userAnswers,
    @Default(1) int currentPage,
    Results? results,
    Error? error,
    Error? snackBar,
  }) = _TestState;
}
