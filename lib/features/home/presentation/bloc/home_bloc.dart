/* External dependencies */
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

/* Local dependencies */
import '../../repository/home_repository.dart';
import 'package:kodjaz/features/models/track.dart';

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

        // await Future.delayed(const Duration(seconds: 1));
        // const List<Track> myListOfCourse = [
        //   Track(
        //       id: 1,
        //       name: 'JavaScript',
        //       description:
        //           'Инженерлер-программисттер, аналитиктер, маалымат таануучулар жана машина үйрөнүү инженерлери колдонгон дүйнөдөгү эң тез өнүгүп жаткан жана эң популярдуу программалоо тилинин негиздерин үйрөнүңүз.Бул курс программалоонун фундаменталдык негиздерин жана Python программалоо тилин үйрөнүү үчүн эң жакшы. Курсту аяктаган соң, Python тилинде программалоону өздөштүрүп, өз долбоорлоруңузду курганга даяр болуп калсыз.Инженерлер-программисттер, аналитиктер, маалымат таануучулар жана машина үйрөнүү инженерлери колдонгон дүйнөдөгү эң тез өнүгүп жаткан жана эң популярдуу программалоо тилинин негиздерин үйрөнүңүз.Бул курс программалоонун фундаменталдык негиздерин жана Python программалоо тилин үйрөнүү үчүн эң жакшы. Курсту аяктаган соң, Python тилинде программалоону өздөштүрүп, өз долбоорлоруңузду курганга даяр болуп калсыз.',
        //       iconUrl:
        //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
        //       level: 1,
        //       track_units: [
        //         Unit(
        //           id: 1,
        //           name: 'Unit 1',
        //           status: LessonsStatus.done,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 2',
        //           status: LessonsStatus.inProgres,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 3',
        //           status: LessonsStatus.didntStart,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 1',
        //           status: LessonsStatus.done,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 2',
        //           status: LessonsStatus.inProgres,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 3',
        //           status: LessonsStatus.didntStart,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 1',
        //           status: LessonsStatus.done,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 2',
        //           status: LessonsStatus.inProgres,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 3',
        //           status: LessonsStatus.didntStart,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 1',
        //           status: LessonsStatus.done,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 2',
        //           status: LessonsStatus.inProgres,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 3',
        //           status: LessonsStatus.didntStart,
        //         ),
        //       ],
        //       progress: 24),
        //   Track(
        //       id: 2,
        //       name: 'JavaScript',
        //       iconUrl:
        //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
        //       level: 2,
        //       track_units: [
        //         Unit(
        //           id: 1,
        //           name: 'Unit 1',
        //           status: LessonsStatus.done,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 2',
        //           status: LessonsStatus.inProgres,
        //         ),
        //         Unit(
        //           id: 1,
        //           name: 'Unit 3',
        //           status: LessonsStatus.didntStart,
        //         ),
        //       ],
        //       progress: 56),
        // ];

        const List<Track> listOfCourse = [
          Track(
            id: 2,
            name: 'Typescript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 3,
            track_units: [
              Unit(
                id: 1,
                name: 'Unit 1',
                status: LessonsStatus.done,
              ),
              Unit(
                id: 1,
                name: 'Unit 2',
                status: LessonsStatus.inProgres,
              ),
              Unit(
                id: 1,
                name: 'Unit 3',
                status: LessonsStatus.didntStart,
              ),
            ],
          ),
          Track(
            id: 2,
            name: 'Java',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 1,
            track_units: [
              Unit(
                id: 1,
                name: 'Unit 1',
                status: LessonsStatus.done,
              ),
              Unit(
                id: 1,
                name: 'Unit 2',
                status: LessonsStatus.inProgres,
              ),
              Unit(
                id: 1,
                name: 'Unit 3',
                status: LessonsStatus.didntStart,
              ),
            ],
          ),
          Track(
            id: 2,
            name: 'JavaScript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 2,
            track_units: [
              Unit(
                id: 1,
                name: 'Unit 1',
                status: LessonsStatus.done,
              ),
              Unit(
                id: 1,
                name: 'Unit 2',
                status: LessonsStatus.inProgres,
              ),
            ],
          ),
          Track(
            id: 2,
            name: 'JavaScript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 1,
            track_units: [
              Unit(
                id: 1,
                name: 'Unit 1',
                status: LessonsStatus.done,
              ),
              Unit(
                id: 1,
                name: 'Unit 2',
                status: LessonsStatus.inProgres,
              ),
              Unit(
                id: 1,
                name: 'Unit 3',
                status: LessonsStatus.didntStart,
              ),
            ],
          ),
          Track(
            id: 2,
            name: 'JavaScript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 2,
            track_units: [],
          ),
        ];

        await _repo.listTracks().then((tracks) {
          emit(
            state.copyWith(
              listOfCourse: listOfCourse,
              myListOfCourse: tracks,
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
