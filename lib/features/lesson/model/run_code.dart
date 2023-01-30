import 'package:freezed_annotation/freezed_annotation.dart';

part 'run_code.freezed.dart';
part 'run_code.g.dart';

@freezed
class RunCode with _$RunCode {
  const factory RunCode({
    required String submitted_code,
    required int exercise,
  }) = _RunCode;

  factory RunCode.fromJson(Map<String, Object?> json) =>
      _$RunCodeFromJson(json);
}

@freezed
class CodeAnswer with _$CodeAnswer {
  const factory CodeAnswer({
    required int id,
    required int exercise,
    @Default(false) bool passed,
    required String submitted_code,
    required String console_output,
    required String error_message,
  }) = _CodeAnswer;

  factory CodeAnswer.fromJson(Map<String, Object?> json) =>
      _$CodeAnswerFromJson(json);
}