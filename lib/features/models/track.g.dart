// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      iconUrl: json['iconUrl'] as String?,
      description: json['description'] as String? ?? '',
      track_units: (json['track_units'] as List<dynamic>?)
              ?.map((e) => Unit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: $enumDecodeNullable(_$LessonsStatusEnumMap, json['status']) ??
          LessonsStatus.didntStart,
      level: json['level'] as int? ?? 0,
      progress: json['progress'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconUrl': instance.iconUrl,
      'description': instance.description,
      'track_units': instance.track_units,
      'status': _$LessonsStatusEnumMap[instance.status]!,
      'level': instance.level,
      'progress': instance.progress,
    };

const _$LessonsStatusEnumMap = {
  LessonsStatus.done: 'done',
  LessonsStatus.inProgres: 'inProgres',
  LessonsStatus.didntStart: 'didntStart',
};

_$_Unit _$$_UnitFromJson(Map<String, dynamic> json) => _$_Unit(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      unit_lessons: (json['unit_lessons'] as List<dynamic>?)
              ?.map((e) => Lesson.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: $enumDecodeNullable(_$LessonsStatusEnumMap, json['status']) ??
          LessonsStatus.didntStart,
    );

Map<String, dynamic> _$$_UnitToJson(_$_Unit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'unit_lessons': instance.unit_lessons,
      'status': _$LessonsStatusEnumMap[instance.status]!,
    };

_$_Lesson _$$_LessonFromJson(Map<String, dynamic> json) => _$_Lesson(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      lesson_exercises: (json['lesson_exercises'] as List<dynamic>?)
              ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: $enumDecodeNullable(_$LessonsStatusEnumMap, json['status']) ??
          LessonsStatus.didntStart,
    );

Map<String, dynamic> _$$_LessonToJson(_$_Lesson instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'lesson_exercises': instance.lesson_exercises,
      'status': _$LessonsStatusEnumMap[instance.status]!,
    };

_$_Exercise _$$_ExerciseFromJson(Map<String, dynamic> json) => _$_Exercise(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      lecture: json['lecture'] as String? ?? '',
      instruction: json['instruction'] as String? ?? '',
      hint: json['hint'] as String? ?? '',
      default_code: json['default_code'] as String? ?? '',
      status: $enumDecodeNullable(_$LessonsStatusEnumMap, json['status']) ??
          LessonsStatus.didntStart,
    );

Map<String, dynamic> _$$_ExerciseToJson(_$_Exercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lecture': instance.lecture,
      'instruction': instance.instruction,
      'hint': instance.hint,
      'default_code': instance.default_code,
      'status': _$LessonsStatusEnumMap[instance.status]!,
    };
