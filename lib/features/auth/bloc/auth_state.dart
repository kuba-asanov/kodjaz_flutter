part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    Token? token,
    @Default(false) bool tokenChecked,
    String? error,
  }) = _Initial;

  factory AuthState.fromJson(Map<String, Object?> json) => _$AuthStateFromJson(json);
}
