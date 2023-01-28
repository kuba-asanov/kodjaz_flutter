/* External dependencies */
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track.freezed.dart';
part 'track.g.dart';

@freezed
class Track with _$Track {
  const factory Track({
    required int id,
    @Default('') String name,
    String? iconUrl,
    @Default('') String description,
    @Default([]) List<Unit> track_units,
    @Default(LessonsStatus.didntStart) LessonsStatus status,
    @Default(0) int level,
    @Default(0) int progress,
  }) = _Course;

  factory Track.fromJson(Map<String, Object?> json) => _$TrackFromJson(json);
}

@freezed
class Unit with _$Unit {
  const factory Unit({
    required int id,
    @Default('') String name,
    @Default('') String description,
    @Default([]) List<Lesson> unit_lessons,
    @Default(LessonsStatus.didntStart) LessonsStatus status,
  }) = _Unit;

  factory Unit.fromJson(Map<String, Object?> json) => _$UnitFromJson(json);
}

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required int id,
    @Default('') String name,
    @Default('') String description,
    @Default([]) List<Exercise> lesson_exercises,
    @Default(LessonsStatus.didntStart) LessonsStatus status,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, Object?> json) => _$LessonFromJson(json);
}

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required int id,
    @Default('') String name,
    @Default('') String lecture,
    @Default('') String instruction,
    @Default('') String hint,
    @Default('') String default_code,
    @Default(LessonsStatus.didntStart) LessonsStatus status,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, Object?> json) =>
      _$ExerciseFromJson(json);
}

enum LessonsStatus { done, inProgres, didntStart }
