/* External dependencies */
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class Token with _$Token {
  const factory Token({
    String? refresh,
    String? access,
  }) = _Token;

  factory Token.fromJson(Map<String, Object?> json) => _$TokenFromJson(json);
}

@freezed
class SignInInfo with _$SignInInfo {
  const factory SignInInfo({
    required String email,
    required String password,
  }) = _SignInInfo;

  factory SignInInfo.fromJson(Map<String, Object?> json) =>
      _$SignInInfoFromJson(json);
}
