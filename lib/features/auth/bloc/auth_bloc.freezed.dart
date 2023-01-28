// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return _Initial.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  Token? get token => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool? get successSignUp => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({Token? token, bool loading, bool? successSignUp, String? error});

  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? loading = null,
    Object? successSignUp = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      successSignUp: freezed == successSignUp
          ? _value.successSignUp
          : successSignUp // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res>? get token {
    if (_value.token == null) {
      return null;
    }

    return $TokenCopyWith<$Res>(_value.token!, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Token? token, bool loading, bool? successSignUp, String? error});

  @override
  $TokenCopyWith<$Res>? get token;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? loading = null,
    Object? successSignUp = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Initial(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      successSignUp: freezed == successSignUp
          ? _value.successSignUp
          : successSignUp // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Initial implements _Initial {
  const _$_Initial(
      {this.token, this.loading = false, this.successSignUp, this.error});

  factory _$_Initial.fromJson(Map<String, dynamic> json) =>
      _$$_InitialFromJson(json);

  @override
  final Token? token;
  @override
  @JsonKey()
  final bool loading;
  @override
  final bool? successSignUp;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState(token: $token, loading: $loading, successSignUp: $successSignUp, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.successSignUp, successSignUp) ||
                other.successSignUp == successSignUp) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, loading, successSignUp, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitialToJson(
      this,
    );
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {final Token? token,
      final bool loading,
      final bool? successSignUp,
      final String? error}) = _$_Initial;

  factory _Initial.fromJson(Map<String, dynamic> json) = _$_Initial.fromJson;

  @override
  Token? get token;
  @override
  bool get loading;
  @override
  bool? get successSignUp;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
