// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'run_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RunCode _$RunCodeFromJson(Map<String, dynamic> json) {
  return _RunCode.fromJson(json);
}

/// @nodoc
mixin _$RunCode {
  String get submitted_code => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RunCodeCopyWith<RunCode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RunCodeCopyWith<$Res> {
  factory $RunCodeCopyWith(RunCode value, $Res Function(RunCode) then) =
      _$RunCodeCopyWithImpl<$Res, RunCode>;
  @useResult
  $Res call({String submitted_code, int id});
}

/// @nodoc
class _$RunCodeCopyWithImpl<$Res, $Val extends RunCode>
    implements $RunCodeCopyWith<$Res> {
  _$RunCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitted_code = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      submitted_code: null == submitted_code
          ? _value.submitted_code
          : submitted_code // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RunCodeCopyWith<$Res> implements $RunCodeCopyWith<$Res> {
  factory _$$_RunCodeCopyWith(
          _$_RunCode value, $Res Function(_$_RunCode) then) =
      __$$_RunCodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String submitted_code, int id});
}

/// @nodoc
class __$$_RunCodeCopyWithImpl<$Res>
    extends _$RunCodeCopyWithImpl<$Res, _$_RunCode>
    implements _$$_RunCodeCopyWith<$Res> {
  __$$_RunCodeCopyWithImpl(_$_RunCode _value, $Res Function(_$_RunCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitted_code = null,
    Object? id = null,
  }) {
    return _then(_$_RunCode(
      submitted_code: null == submitted_code
          ? _value.submitted_code
          : submitted_code // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RunCode implements _RunCode {
  const _$_RunCode({required this.submitted_code, required this.id});

  factory _$_RunCode.fromJson(Map<String, dynamic> json) =>
      _$$_RunCodeFromJson(json);

  @override
  final String submitted_code;
  @override
  final int id;

  @override
  String toString() {
    return 'RunCode(submitted_code: $submitted_code, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RunCode &&
            (identical(other.submitted_code, submitted_code) ||
                other.submitted_code == submitted_code) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, submitted_code, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RunCodeCopyWith<_$_RunCode> get copyWith =>
      __$$_RunCodeCopyWithImpl<_$_RunCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RunCodeToJson(
      this,
    );
  }
}

abstract class _RunCode implements RunCode {
  const factory _RunCode(
      {required final String submitted_code,
      required final int id}) = _$_RunCode;

  factory _RunCode.fromJson(Map<String, dynamic> json) = _$_RunCode.fromJson;

  @override
  String get submitted_code;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_RunCodeCopyWith<_$_RunCode> get copyWith =>
      throw _privateConstructorUsedError;
}
