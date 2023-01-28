/* External dependencies */
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? email,
    String? password1,
    String? password2,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class UserCreateResponse with _$UserCreateResponse {
  const factory UserCreateResponse({
    List? email,
  }) = _UserCreateResponse;

  factory UserCreateResponse.fromJson(Map<String, Object?> json) =>
      _$UserCreateResponseFromJson(json);
}
