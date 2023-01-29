import 'package:freezed_annotation/freezed_annotation.dart';

part 'run_code.freezed.dart';
part 'run_code.g.dart';

@freezed
class RunCode with _$RunCode {
  const factory RunCode({
    required String submitted_code,
    required int id,
  }) = _RunCode;

  factory RunCode.fromJson(Map<String, Object?> json) =>
      _$RunCodeFromJson(json);
}
