// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  String get appVersion => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  int get currentPageIndex => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  String get currentUserId => throw _privateConstructorUsedError;
  String get activeUserId => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {String appVersion,
      bool loading,
      int currentPageIndex,
      bool isAuthenticated,
      String currentUserId,
      String activeUserId,
      String? user});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? loading = null,
    Object? currentPageIndex = null,
    Object? isAuthenticated = null,
    Object? currentUserId = null,
    Object? activeUserId = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      activeUserId: null == activeUserId
          ? _value.activeUserId
          : activeUserId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appVersion,
      bool loading,
      int currentPageIndex,
      bool isAuthenticated,
      String currentUserId,
      String activeUserId,
      String? user});
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_AppState>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? loading = null,
    Object? currentPageIndex = null,
    Object? isAuthenticated = null,
    Object? currentUserId = null,
    Object? activeUserId = null,
    Object? user = freezed,
  }) {
    return _then(_$_AppState(
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      activeUserId: null == activeUserId
          ? _value.activeUserId
          : activeUserId // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  _$_AppState(
      {this.appVersion = '...',
      this.loading = false,
      this.currentPageIndex = 0,
      this.isAuthenticated = false,
      this.currentUserId = '',
      this.activeUserId = '',
      this.user});

  @override
  @JsonKey()
  final String appVersion;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final int currentPageIndex;
  @override
  @JsonKey()
  final bool isAuthenticated;
  @override
  @JsonKey()
  final String currentUserId;
  @override
  @JsonKey()
  final String activeUserId;
  @override
  final String? user;

  @override
  String toString() {
    return 'AppState(appVersion: $appVersion, loading: $loading, currentPageIndex: $currentPageIndex, isAuthenticated: $isAuthenticated, currentUserId: $currentUserId, activeUserId: $activeUserId, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId) &&
            (identical(other.activeUserId, activeUserId) ||
                other.activeUserId == activeUserId) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appVersion, loading,
      currentPageIndex, isAuthenticated, currentUserId, activeUserId, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  factory _AppState(
      {final String appVersion,
      final bool loading,
      final int currentPageIndex,
      final bool isAuthenticated,
      final String currentUserId,
      final String activeUserId,
      final String? user}) = _$_AppState;

  @override
  String get appVersion;
  @override
  bool get loading;
  @override
  int get currentPageIndex;
  @override
  bool get isAuthenticated;
  @override
  String get currentUserId;
  @override
  String get activeUserId;
  @override
  String? get user;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
