/* External dependencies */
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cours.freezed.dart';
part 'cours.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    @Default('') String id,
    @Default('') String name,
    @Default('') String iconUrl,
    @Default('') String aboutCourse,
    @Default([]) List<Lessons> lessons,
    @Default(LessonsStatus.didntStart) LessonsStatus status,
    @Default(0) int level,
    @Default(0) int progress,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}

@freezed
class Lessons with _$Lessons {
  const factory Lessons({
    @Default('') String id,
    @Default('') String name,
    @Default(LessonsStatus.didntStart) LessonsStatus status,
  }) = _Lessons;

  factory Lessons.fromJson(Map<String, Object?> json) =>
      _$LessonsFromJson(json);
}

enum LessonsStatus { done, inProgres, didntStart }
