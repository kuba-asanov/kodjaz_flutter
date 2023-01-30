part of 'lesson_bloc.dart';

@freezed
class LessonState with _$LessonState {
  factory LessonState({
    @Default(false) bool loading,
    @Default(false) bool running,
    Exercise? exercise,
    CodeAnswer? codeAnswer,
    // CustomError? error,
  }) = _LessonState;
}
