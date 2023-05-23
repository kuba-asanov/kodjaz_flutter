// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RunCode _$$_RunCodeFromJson(Map<String, dynamic> json) => _$_RunCode(
      submitted_code: json['submitted_code'] as String,
      exercise: json['exercise'] as int,
    );

Map<String, dynamic> _$$_RunCodeToJson(_$_RunCode instance) =>
    <String, dynamic>{
      'submitted_code': instance.submitted_code,
      'exercise': instance.exercise,
    };

_$_CodeAnswer _$$_CodeAnswerFromJson(Map<String, dynamic> json) =>
    _$_CodeAnswer(
      id: json['id'] as int,
      exercise: json['exercise'] as int,
      passed: json['passed'] as bool? ?? false,
      submitted_code: json['submitted_code'] as String,
      console_output: json['console_output'] as String,
      error_message: json['error_message'] as String,
    );

Map<String, dynamic> _$$_CodeAnswerToJson(_$_CodeAnswer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exercise': instance.exercise,
      'passed': instance.passed,
      'submitted_code': instance.submitted_code,
      'console_output': instance.console_output,
      'error_message': instance.error_message,
    };
