part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(false) bool loading,
    @Default([]) List<Track> listOfCourse,
    @Default([]) List<Track> myListOfCourse,

    // CustomError? error,
  }) = _HomeState;
}
