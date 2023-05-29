/* External dependencies */
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

/* Local dependencies */
import '../../repository/home_repository.dart';
import 'package:bilimapp/features/models/track.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _repo;

  HomeBloc(this._repo) : super(HomeState()) {
    on<GetLessonsEvent>(
      (event, emit) async {
        emit(state.copyWith(loading: true));

        const List<Track> mockListOfCourse = [
          Track(
            id: 2,
            name: 'Java',
            iconUrl: 'https://cdn-icons-png.flaticon.com/512/226/226777.png',
            level: 3,
            track_units: [
              Unit(
                  id: 1,
                  name: 'Unit 1',
                  status: LessonsStatus.inProgres,
                  unit_lessons: []),
              Unit(
                  id: 1,
                  name: 'Unit 2',
                  status: LessonsStatus.didntStart,
                  unit_lessons: []),
            ],
          ),
          Track(
            id: 2,
            name: 'Typescript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 2,
            track_units: [
              Unit(
                  id: 1,
                  name: 'Unit 1',
                  status: LessonsStatus.didntStart,
                  unit_lessons: []),
            ],
          ),
          Track(
            id: 2,
            name: 'JavaScript',
            iconUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/JavaScript-logo.png/800px-JavaScript-logo.png',
            level: 2,
            track_units: [],
          ),
        ];

        await _repo.listTracks().then((tracks) {
          emit(
            state.copyWith(
              listOfCourse: [
                ...tracks,
                ...mockListOfCourse,
              ],
              loading: false,
            ),
          );
        }).onError((error, stackTrace) {
          emit(state.copyWith(
            loading: false,
          ));
        });
      },
    );
  }
}
