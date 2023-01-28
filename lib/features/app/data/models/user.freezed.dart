// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get email => throw _privateConstructorUsedError;
  String? get password1 => throw _privateConstructorUsedError;
  String? get password2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String? email, String? password1, String? password2});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password1 = freezed,
    Object? password2 = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password1: freezed == password1
          ? _value.password1
          : password1 // ignore: cast_nullable_to_non_nullable
              as String?,
      password2: freezed == password2
          ? _value.password2
          : password2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password1, String? password2});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password1 = freezed,
    Object? password2 = freezed,
  }) {
    return _then(_$_User(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password1: freezed == password1
          ? _value.password1
          : password1 // ignore: cast_nullable_to_non_nullable
              as String?,
      password2: freezed == password2
          ? _value.password2
          : password2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User({this.email, this.password1, this.password2});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? email;
  @override
  final String? password1;
  @override
  final String? password2;

  @override
  String toString() {
    return 'User(email: $email, password1: $password1, password2: $password2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password1, password1) ||
                other.password1 == password1) &&
            (identical(other.password2, password2) ||
                other.password2 == password2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password1, password2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? email,
      final String? password1,
      final String? password2}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get email;
  @override
  String? get password1;
  @override
  String? get password2;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

UserCreateResponse _$UserCreateResponseFromJson(Map<String, dynamic> json) {
  return _UserCreateResponse.fromJson(json);
}

/// @nodoc
mixin _$UserCreateResponse {
  List<dynamic>? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCreateResponseCopyWith<UserCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateResponseCopyWith<$Res> {
  factory $UserCreateResponseCopyWith(
          UserCreateResponse value, $Res Function(UserCreateResponse) then) =
      _$UserCreateResponseCopyWithImpl<$Res, UserCreateResponse>;
  @useResult
  $Res call({List<dynamic>? email});
}

/// @nodoc
class _$UserCreateResponseCopyWithImpl<$Res, $Val extends UserCreateResponse>
    implements $UserCreateResponseCopyWith<$Res> {
  _$UserCreateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCreateResponseCopyWith<$Res>
    implements $UserCreateResponseCopyWith<$Res> {
  factory _$$_UserCreateResponseCopyWith(_$_UserCreateResponse value,
          $Res Function(_$_UserCreateResponse) then) =
      __$$_UserCreateResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic>? email});
}

/// @nodoc
class __$$_UserCreateResponseCopyWithImpl<$Res>
    extends _$UserCreateResponseCopyWithImpl<$Res, _$_UserCreateResponse>
    implements _$$_UserCreateResponseCopyWith<$Res> {
  __$$_UserCreateResponseCopyWithImpl(
      _$_UserCreateResponse _value, $Res Function(_$_UserCreateResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_UserCreateResponse(
      email: freezed == email
          ? _value._email
          : email // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCreateResponse implements _UserCreateResponse {
  const _$_UserCreateResponse({final List<dynamic>? email}) : _email = email;

  factory _$_UserCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserCreateResponseFromJson(json);

  final List<dynamic>? _email;
  @override
  List<dynamic>? get email {
    final value = _email;
    if (value == null) return null;
    if (_email is EqualUnmodifiableListView) return _email;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserCreateResponse(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCreateResponse &&
            const DeepCollectionEquality().equals(other._email, _email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_email));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCreateResponseCopyWith<_$_UserCreateResponse> get copyWith =>
      __$$_UserCreateResponseCopyWithImpl<_$_UserCreateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCreateResponseToJson(
      this,
    );
  }
}

abstract class _UserCreateResponse implements UserCreateResponse {
  const factory _UserCreateResponse({final List<dynamic>? email}) =
      _$_UserCreateResponse;

  factory _UserCreateResponse.fromJson(Map<String, dynamic> json) =
      _$_UserCreateResponse.fromJson;

  @override
  List<dynamic>? get email;
  @override
  @JsonKey(ignore: true)
  _$$_UserCreateResponseCopyWith<_$_UserCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
