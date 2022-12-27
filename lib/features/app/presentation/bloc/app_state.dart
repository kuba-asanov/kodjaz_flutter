part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    @Default('...') String appVersion,
    @Default(false) bool loading,
    @Default(0) int currentPageIndex,
    @Default(false) bool isAuthenticated,
    @Default('') String currentUserId,
    @Default('') String activeUserId,
    String? user,
    // CustomError? error,
  }) = _AppState;
}