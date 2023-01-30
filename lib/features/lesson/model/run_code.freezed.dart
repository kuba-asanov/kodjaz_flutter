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
  int get exercise => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RunCodeCopyWith<RunCode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RunCodeCopyWith<$Res> {
  factory $RunCodeCopyWith(RunCode value, $Res Function(RunCode) then) =
      _$RunCodeCopyWithImpl<$Res, RunCode>;
  @useResult
  $Res call({String submitted_code, int exercise});
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
    Object? exercise = null,
  }) {
    return _then(_value.copyWith(
      submitted_code: null == submitted_code
          ? _value.submitted_code
          : submitted_code // ignore: cast_nullable_to_non_nullable
              as String,
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
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
  $Res call({String submitted_code, int exercise});
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
    Object? exercise = null,
  }) {
    return _then(_$_RunCode(
      submitted_code: null == submitted_code
          ? _value.submitted_code
          : submitted_code // ignore: cast_nullable_to_non_nullable
              as String,
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RunCode implements _RunCode {
  const _$_RunCode({required this.submitted_code, required this.exercise});

  factory _$_RunCode.fromJson(Map<String, dynamic> json) =>
      _$$_RunCodeFromJson(json);

  @override
  final String submitted_code;
  @override
  final int exercise;

  @override
  String toString() {
    return 'RunCode(submitted_code: $submitted_code, exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RunCode &&
            (identical(other.submitted_code, submitted_code) ||
                other.submitted_code == submitted_code) &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, submitted_code, exercise);

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
      required final int exercise}) = _$_RunCode;

  factory _RunCode.fromJson(Map<String, dynamic> json) = _$_RunCode.fromJson;

  @override
  String get submitted_code;
  @override
  int get exercise;
  @override
  @JsonKey(ignore: true)
  _$$_RunCodeCopyWith<_$_RunCode> get copyWith =>
      throw _privateConstructorUsedError;
}

CodeAnswer _$CodeAnswerFromJson(Map<String, dynamic> json) {
  return _CodeAnswer.fromJson(json);
}

/// @nodoc
mixin _$CodeAnswer {
  int get id => throw _privateConstructorUsedError;
  bool get passed => throw _privateConstructorUsedError;
  String get submitted_code => throw _privateConstructorUsedError;
  int get exercise => throw _privateConstructorUsedError;
  String get console_output => throw _privateConstructorUsedError;
  String get error_message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeAnswerCopyWith<CodeAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeAnswerCopyWith<$Res> {
  factory $CodeAnswerCopyWith(
          CodeAnswer value, $Res Function(CodeAnswer) then) =
      _$CodeAnswerCopyWithImpl<$Res, CodeAnswer>;
  @useResult
  $Res call(
      {int id,
      bool passed,
      String submitted_code,
      int exercise,
      String console_output,
      String error_message});
}

/// @nodoc
class _$CodeAnswerCopyWithImpl<$Res, $Val extends CodeAnswer>
    implements $CodeAnswerCopyWith<$Res> {
  _$CodeAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? passed = null,
    Object? submitted_code = null,
    Object? exercise = null,
    Object? console_output = null,
    Object? error_message = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      submitted_code: null == submitted_code
          ? _value.submitted_code
          : submitted_code // ignore: cast_nullable_to_non_nullable
              as String,
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as int,
      console_output: null == console_output
          ? _value.console_output
          : console_output // ignore: cast_nullable_to_non_nullable
              as String,
      error_message: null == error_message
          ? _value.error_message
          : error_message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CodeAnswerCopyWith<$Res>
    implements $CodeAnswerCopyWith<$Res> {
  factory _$$_CodeAnswerCopyWith(
          _$_CodeAnswer value, $Res Function(_$_CodeAnswer) then) =
      __$$_CodeAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool passed,
      String submitted_code,
      int exercise,
      String console_output,
      String error_message});
}

/// @nodoc
class __$$_CodeAnswerCopyWithImpl<$Res>
    extends _$CodeAnswerCopyWithImpl<$Res, _$_CodeAnswer>
    implements _$$_CodeAnswerCopyWith<$Res> {
  __$$_CodeAnswerCopyWithImpl(
      _$_CodeAnswer _value, $Res Function(_$_CodeAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? passed = null,
    Object? submitted_code = null,
    Object? exercise = null,
    Object? console_output = null,
    Object? error_message = null,
  }) {
    return _then(_$_CodeAnswer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      submitted_code: null == submitted_code
          ? _value.submitted_code
          : submitted_code // ignore: cast_nullable_to_non_nullable
              as String,
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as int,
      console_output: null == console_output
          ? _value.console_output
          : console_output // ignore: cast_nullable_to_non_nullable
              as String,
      error_message: null == error_message
          ? _value.error_message
          : error_message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CodeAnswer implements _CodeAnswer {
  const _$_CodeAnswer(
      {required this.id,
      this.passed = false,
      required this.submitted_code,
      required this.exercise,
      required this.console_output,
      required this.error_message});

  factory _$_CodeAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_CodeAnswerFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final bool passed;
  @override
  final String submitted_code;
  @override
  final int exercise;
  @override
  final String console_output;
  @override
  final String error_message;

  @override
  String toString() {
    return 'CodeAnswer(id: $id, passed: $passed, submitted_code: $submitted_code, exercise: $exercise, console_output: $console_output, error_message: $error_message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodeAnswer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.passed, passed) || other.passed == passed) &&
            (identical(other.submitted_code, submitted_code) ||
                other.submitted_code == submitted_code) &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise) &&
            (identical(other.console_output, console_output) ||
                other.console_output == console_output) &&
            (identical(other.error_message, error_message) ||
                other.error_message == error_message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, passed, submitted_code,
      exercise, console_output, error_message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodeAnswerCopyWith<_$_CodeAnswer> get copyWith =>
      __$$_CodeAnswerCopyWithImpl<_$_CodeAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CodeAnswerToJson(
      this,
    );
  }
}

abstract class _CodeAnswer implements CodeAnswer {
  const factory _CodeAnswer(
      {required final int id,
      final bool passed,
      required final String submitted_code,
      required final int exercise,
      required final String console_output,
      required final String error_message}) = _$_CodeAnswer;

  factory _CodeAnswer.fromJson(Map<String, dynamic> json) =
      _$_CodeAnswer.fromJson;

  @override
  int get id;
  @override
  bool get passed;
  @override
  String get submitted_code;
  @override
  int get exercise;
  @override
  String get console_output;
  @override
  String get error_message;
  @override
  @JsonKey(ignore: true)
  _$$_CodeAnswerCopyWith<_$_CodeAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}
