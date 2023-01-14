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
    @Default(0) int lessonsCount,
    @Default(0) int level,
    @Default(0) int progress,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}
