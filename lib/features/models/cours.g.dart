// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cours _$$_CoursFromJson(Map<String, dynamic> json) => _$_Cours(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      iconUrl: json['iconUrl'] as String? ?? '',
      lessonsCount: json['lessonsCount'] as int? ?? 0,
      level: json['level'] as int? ?? 0,
      progress: json['progress'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CoursToJson(_$_Cours instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconUrl': instance.iconUrl,
      'lessonsCount': instance.lessonsCount,
      'level': instance.level,
      'progress': instance.progress,
    };
