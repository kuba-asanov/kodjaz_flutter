part of 'lesson_bloc.dart';

abstract class LessonEvent {}

class SetExerciseEvent extends LessonEvent {
  Exercise exercise;

  SetExerciseEvent({required this.exercise});
}
