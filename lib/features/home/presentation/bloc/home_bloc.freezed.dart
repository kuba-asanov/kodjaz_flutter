// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  bool get loading => throw _privateConstructorUsedError;
  List<Track> get listOfCourse => throw _privateConstructorUsedError;
  List<Track> get myListOfCourse => throw _privateConstructorUsedError;
  DioError? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool loading,
      List<Track> listOfCourse,
      List<Track> myListOfCourse,
      DioError? error});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? listOfCourse = null,
    Object? myListOfCourse = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfCourse: null == listOfCourse
          ? _value.listOfCourse
          : listOfCourse // ignore: cast_nullable_to_non_nullable
              as List<Track>,
      myListOfCourse: null == myListOfCourse
          ? _value.myListOfCourse
          : myListOfCourse // ignore: cast_nullable_to_non_nullable
              as List<Track>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      List<Track> listOfCourse,
      List<Track> myListOfCourse,
      DioError? error});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? listOfCourse = null,
    Object? myListOfCourse = null,
    Object? error = freezed,
  }) {
    return _then(_$_HomeState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfCourse: null == listOfCourse
          ? _value._listOfCourse
          : listOfCourse // ignore: cast_nullable_to_non_nullable
              as List<Track>,
      myListOfCourse: null == myListOfCourse
          ? _value._myListOfCourse
          : myListOfCourse // ignore: cast_nullable_to_non_nullable
              as List<Track>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {this.loading = false,
      final List<Track> listOfCourse = const [],
      final List<Track> myListOfCourse = const [],
      this.error})
      : _listOfCourse = listOfCourse,
        _myListOfCourse = myListOfCourse;

  @override
  @JsonKey()
  final bool loading;
  final List<Track> _listOfCourse;
  @override
  @JsonKey()
  List<Track> get listOfCourse {
    if (_listOfCourse is EqualUnmodifiableListView) return _listOfCourse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfCourse);
  }

  final List<Track> _myListOfCourse;
  @override
  @JsonKey()
  List<Track> get myListOfCourse {
    if (_myListOfCourse is EqualUnmodifiableListView) return _myListOfCourse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myListOfCourse);
  }

  @override
  final DioError? error;

  @override
  String toString() {
    return 'HomeState(loading: $loading, listOfCourse: $listOfCourse, myListOfCourse: $myListOfCourse, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._listOfCourse, _listOfCourse) &&
            const DeepCollectionEquality()
                .equals(other._myListOfCourse, _myListOfCourse) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(_listOfCourse),
      const DeepCollectionEquality().hash(_myListOfCourse),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {final bool loading,
      final List<Track> listOfCourse,
      final List<Track> myListOfCourse,
      final DioError? error}) = _$_HomeState;

  @override
  bool get loading;
  @override
  List<Track> get listOfCourse;
  @override
  List<Track> get myListOfCourse;
  @override
  DioError? get error;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
