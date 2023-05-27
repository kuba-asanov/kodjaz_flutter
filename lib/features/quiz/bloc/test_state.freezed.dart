// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestState {
  bool get loading => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  List<Question> get modifiedQuestions => throw _privateConstructorUsedError;
  List<UserAnswer> get userAnswers => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  Results? get results => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;
  Error? get snackBar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestStateCopyWith<TestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestStateCopyWith<$Res> {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) then) =
      _$TestStateCopyWithImpl<$Res, TestState>;
  @useResult
  $Res call(
      {bool loading,
      List<Question> questions,
      List<Question> modifiedQuestions,
      List<UserAnswer> userAnswers,
      int currentPage,
      Results? results,
      Error? error,
      Error? snackBar});

  $ResultsCopyWith<$Res>? get results;
}

/// @nodoc
class _$TestStateCopyWithImpl<$Res, $Val extends TestState>
    implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? questions = null,
    Object? modifiedQuestions = null,
    Object? userAnswers = null,
    Object? currentPage = null,
    Object? results = freezed,
    Object? error = freezed,
    Object? snackBar = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      modifiedQuestions: null == modifiedQuestions
          ? _value.modifiedQuestions
          : modifiedQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      userAnswers: null == userAnswers
          ? _value.userAnswers
          : userAnswers // ignore: cast_nullable_to_non_nullable
              as List<UserAnswer>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Results?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
      snackBar: freezed == snackBar
          ? _value.snackBar
          : snackBar // ignore: cast_nullable_to_non_nullable
              as Error?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultsCopyWith<$Res>? get results {
    if (_value.results == null) {
      return null;
    }

    return $ResultsCopyWith<$Res>(_value.results!, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TestStateCopyWith<$Res> implements $TestStateCopyWith<$Res> {
  factory _$$_TestStateCopyWith(
          _$_TestState value, $Res Function(_$_TestState) then) =
      __$$_TestStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      List<Question> questions,
      List<Question> modifiedQuestions,
      List<UserAnswer> userAnswers,
      int currentPage,
      Results? results,
      Error? error,
      Error? snackBar});

  @override
  $ResultsCopyWith<$Res>? get results;
}

/// @nodoc
class __$$_TestStateCopyWithImpl<$Res>
    extends _$TestStateCopyWithImpl<$Res, _$_TestState>
    implements _$$_TestStateCopyWith<$Res> {
  __$$_TestStateCopyWithImpl(
      _$_TestState _value, $Res Function(_$_TestState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? questions = null,
    Object? modifiedQuestions = null,
    Object? userAnswers = null,
    Object? currentPage = null,
    Object? results = freezed,
    Object? error = freezed,
    Object? snackBar = freezed,
  }) {
    return _then(_$_TestState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      modifiedQuestions: null == modifiedQuestions
          ? _value._modifiedQuestions
          : modifiedQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      userAnswers: null == userAnswers
          ? _value._userAnswers
          : userAnswers // ignore: cast_nullable_to_non_nullable
              as List<UserAnswer>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Results?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
      snackBar: freezed == snackBar
          ? _value.snackBar
          : snackBar // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$_TestState implements _TestState {
  _$_TestState(
      {this.loading = false,
      final List<Question> questions = const [],
      final List<Question> modifiedQuestions = const [],
      final List<UserAnswer> userAnswers = const [],
      this.currentPage = 1,
      this.results,
      this.error,
      this.snackBar})
      : _questions = questions,
        _modifiedQuestions = modifiedQuestions,
        _userAnswers = userAnswers;

  @override
  @JsonKey()
  final bool loading;
  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<Question> _modifiedQuestions;
  @override
  @JsonKey()
  List<Question> get modifiedQuestions {
    if (_modifiedQuestions is EqualUnmodifiableListView)
      return _modifiedQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modifiedQuestions);
  }

  final List<UserAnswer> _userAnswers;
  @override
  @JsonKey()
  List<UserAnswer> get userAnswers {
    if (_userAnswers is EqualUnmodifiableListView) return _userAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userAnswers);
  }

  @override
  @JsonKey()
  final int currentPage;
  @override
  final Results? results;
  @override
  final Error? error;
  @override
  final Error? snackBar;

  @override
  String toString() {
    return 'TestState(loading: $loading, questions: $questions, modifiedQuestions: $modifiedQuestions, userAnswers: $userAnswers, currentPage: $currentPage, results: $results, error: $error, snackBar: $snackBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality()
                .equals(other._modifiedQuestions, _modifiedQuestions) &&
            const DeepCollectionEquality()
                .equals(other._userAnswers, _userAnswers) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.results, results) || other.results == results) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.snackBar, snackBar) ||
                other.snackBar == snackBar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_modifiedQuestions),
      const DeepCollectionEquality().hash(_userAnswers),
      currentPage,
      results,
      error,
      snackBar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestStateCopyWith<_$_TestState> get copyWith =>
      __$$_TestStateCopyWithImpl<_$_TestState>(this, _$identity);
}

abstract class _TestState implements TestState {
  factory _TestState(
      {final bool loading,
      final List<Question> questions,
      final List<Question> modifiedQuestions,
      final List<UserAnswer> userAnswers,
      final int currentPage,
      final Results? results,
      final Error? error,
      final Error? snackBar}) = _$_TestState;

  @override
  bool get loading;
  @override
  List<Question> get questions;
  @override
  List<Question> get modifiedQuestions;
  @override
  List<UserAnswer> get userAnswers;
  @override
  int get currentPage;
  @override
  Results? get results;
  @override
  Error? get error;
  @override
  Error? get snackBar;
  @override
  @JsonKey(ignore: true)
  _$$_TestStateCopyWith<_$_TestState> get copyWith =>
      throw _privateConstructorUsedError;
}
