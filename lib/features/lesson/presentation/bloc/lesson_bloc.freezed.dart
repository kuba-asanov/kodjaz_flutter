// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LessonState {
  bool get loading => throw _privateConstructorUsedError;
  Exercise? get exercise => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonStateCopyWith<LessonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStateCopyWith<$Res> {
  factory $LessonStateCopyWith(
          LessonState value, $Res Function(LessonState) then) =
      _$LessonStateCopyWithImpl<$Res, LessonState>;
  @useResult
  $Res call({bool loading, Exercise? exercise});

  $ExerciseCopyWith<$Res>? get exercise;
}

/// @nodoc
class _$LessonStateCopyWithImpl<$Res, $Val extends LessonState>
    implements $LessonStateCopyWith<$Res> {
  _$LessonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? exercise = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      exercise: freezed == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExerciseCopyWith<$Res>? get exercise {
    if (_value.exercise == null) {
      return null;
    }

    return $ExerciseCopyWith<$Res>(_value.exercise!, (value) {
      return _then(_value.copyWith(exercise: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LessonStateCopyWith<$Res>
    implements $LessonStateCopyWith<$Res> {
  factory _$$_LessonStateCopyWith(
          _$_LessonState value, $Res Function(_$_LessonState) then) =
      __$$_LessonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, Exercise? exercise});

  @override
  $ExerciseCopyWith<$Res>? get exercise;
}

/// @nodoc
class __$$_LessonStateCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res, _$_LessonState>
    implements _$$_LessonStateCopyWith<$Res> {
  __$$_LessonStateCopyWithImpl(
      _$_LessonState _value, $Res Function(_$_LessonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? exercise = freezed,
  }) {
    return _then(_$_LessonState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      exercise: freezed == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise?,
    ));
  }
}

/// @nodoc

class _$_LessonState implements _LessonState {
  _$_LessonState({this.loading = false, this.exercise});

  @override
  @JsonKey()
  final bool loading;
  @override
  final Exercise? exercise;

  @override
  String toString() {
    return 'LessonState(loading: $loading, exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, exercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonStateCopyWith<_$_LessonState> get copyWith =>
      __$$_LessonStateCopyWithImpl<_$_LessonState>(this, _$identity);
}

abstract class _LessonState implements LessonState {
  factory _LessonState({final bool loading, final Exercise? exercise}) =
      _$_LessonState;

  @override
  bool get loading;
  @override
  Exercise? get exercise;
  @override
  @JsonKey(ignore: true)
  _$$_LessonStateCopyWith<_$_LessonState> get copyWith =>
      throw _privateConstructorUsedError;
}
