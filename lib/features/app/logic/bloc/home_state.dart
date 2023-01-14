part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(false) bool loading,
    @Default([]) List<Cours> listOfCourse,
    @Default([]) List<Cours> myListOfCourse,

    // CustomError? error,
  }) = _HomeState;
}
