// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      iconUrl: json['iconUrl'] as String? ?? '',
      aboutCourse: json['aboutCourse'] as String? ?? '',
      lessons: (json['lessons'] as List<dynamic>?)
              ?.map((e) => Lessons.fromJson(e as Map<String, dynamic>))
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
      'aboutCourse': instance.aboutCourse,
      'lessons': instance.lessons,
      'status': _$LessonsStatusEnumMap[instance.status]!,
      'level': instance.level,
      'progress': instance.progress,
    };

const _$LessonsStatusEnumMap = {
  LessonsStatus.done: 'done',
  LessonsStatus.inProgres: 'inProgres',
  LessonsStatus.didntStart: 'didntStart',
};

_$_Lessons _$$_LessonsFromJson(Map<String, dynamic> json) => _$_Lessons(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      status: $enumDecodeNullable(_$LessonsStatusEnumMap, json['status']) ??
          LessonsStatus.didntStart,
    );

Map<String, dynamic> _$$_LessonsToJson(_$_Lessons instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': _$LessonsStatusEnumMap[instance.status]!,
    };
