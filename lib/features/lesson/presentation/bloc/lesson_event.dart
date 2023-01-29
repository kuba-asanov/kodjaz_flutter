part of 'lesson_bloc.dart';

abstract class LessonEvent {}

class SetExerciseEvent extends LessonEvent {
  Exercise exercise;

  SetExerciseEvent({required this.exercise});
}

class RunExerciseEvent extends LessonEvent {
  final String submitted_code;
  final int id;

  RunExerciseEvent({required this.submitted_code, required this.id});
}
