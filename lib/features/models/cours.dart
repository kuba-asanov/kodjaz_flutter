/* External dependencies */
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cours.freezed.dart';
part 'cours.g.dart';

@freezed
class Cours with _$Cours {
  const factory Cours({
    @Default('') String id,
    @Default('') String name,
    @Default('') String iconUrl,
    @Default(0) int lessonsCount,
    @Default(0) int level,
    @Default(0) int progress,
  }) = _Cours;

  factory Cours.fromJson(Map<String, Object?> json) => _$CoursFromJson(json);
}
