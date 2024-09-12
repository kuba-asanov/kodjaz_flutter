// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BooksState {
  bool get loading => throw _privateConstructorUsedError;
  List<BooksModel> get listOfBooks => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BooksStateCopyWith<BooksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
          BooksState value, $Res Function(BooksState) then) =
      _$BooksStateCopyWithImpl<$Res, BooksState>;
  @useResult
  $Res call({bool loading, List<BooksModel> listOfBooks, String? error});
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res, $Val extends BooksState>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? listOfBooks = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfBooks: null == listOfBooks
          ? _value.listOfBooks
          : listOfBooks // ignore: cast_nullable_to_non_nullable
              as List<BooksModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BooksStateCopyWith<$Res>
    implements $BooksStateCopyWith<$Res> {
  factory _$$_BooksStateCopyWith(
          _$_BooksState value, $Res Function(_$_BooksState) then) =
      __$$_BooksStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, List<BooksModel> listOfBooks, String? error});
}

/// @nodoc
class __$$_BooksStateCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$_BooksState>
    implements _$$_BooksStateCopyWith<$Res> {
  __$$_BooksStateCopyWithImpl(
      _$_BooksState _value, $Res Function(_$_BooksState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? listOfBooks = null,
    Object? error = freezed,
  }) {
    return _then(_$_BooksState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfBooks: null == listOfBooks
          ? _value._listOfBooks
          : listOfBooks // ignore: cast_nullable_to_non_nullable
              as List<BooksModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BooksState implements _BooksState {
  _$_BooksState(
      {this.loading = false,
      final List<BooksModel> listOfBooks = const [],
      this.error})
      : _listOfBooks = listOfBooks;

  @override
  @JsonKey()
  final bool loading;
  final List<BooksModel> _listOfBooks;
  @override
  @JsonKey()
  List<BooksModel> get listOfBooks {
    if (_listOfBooks is EqualUnmodifiableListView) return _listOfBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfBooks);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'BooksState(loading: $loading, listOfBooks: $listOfBooks, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._listOfBooks, _listOfBooks) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(_listOfBooks), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BooksStateCopyWith<_$_BooksState> get copyWith =>
      __$$_BooksStateCopyWithImpl<_$_BooksState>(this, _$identity);
}

abstract class _BooksState implements BooksState {
  factory _BooksState(
      {final bool loading,
      final List<BooksModel> listOfBooks,
      final String? error}) = _$_BooksState;

  @override
  bool get loading;
  @override
  List<BooksModel> get listOfBooks;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_BooksStateCopyWith<_$_BooksState> get copyWith =>
      throw _privateConstructorUsedError;
}
