// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      iconUrl: json['iconUrl'] as String? ?? '',
      lessonsCount: json['lessonsCount'] as int? ?? 0,
      level: json['level'] as int? ?? 0,
      progress: json['progress'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconUrl': instance.iconUrl,
      'lessonsCount': instance.lessonsCount,
      'level': instance.level,
      'progress': instance.progress,
    };
