part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(false) bool loading,
    @Default([]) List<Course> listOfCourse,
    @Default([]) List<Course> myListOfCourse,

    // CustomError? error,
  }) = _HomeState;
}
