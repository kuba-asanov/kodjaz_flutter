part of 'lesson_bloc.dart';

@freezed
class LessonState with _$LessonState {
  factory LessonState({
    @Default(false) bool loading,
    Exercise? exercise,

    // CustomError? error,
  }) = _LessonState;
}
