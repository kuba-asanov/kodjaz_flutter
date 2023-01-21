/* External dependencies */
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

/* Local dependencies */
import 'package:kodjaz/features/models/cours.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<GetLessonsEvent>(
      (event, emit) async {
        emit(state.copyWith(loading: true));

        await Future.delayed(const Duration(seconds: 1));
        const List<Course> myListOfCourse = [
          Course(
              name: 'JavaScript',
              aboutCourse:
                  'Инженерлер-программисттер, аналитиктер, маалымат таануучулар жана машина үйрөнүү инженерлери колдонгон дүйнөдөгү эң тез өнүгүп жаткан жана эң популярдуу программалоо тилинин негиздерин үйрөнүңүз.Бул курс программалоонун фундаменталдык негиздерин жана Python программалоо тилин үйрөнүү үчүн эң жакшы. Курсту аяктаган соң, Python тилинде программалоону өздөштүрүп, өз долбоорлоруңузду курганга даяр болуп калсыз.Инженерлер-программисттер, аналитиктер, маалымат таануучулар жана машина үйрөнүү инженерлери колдонгон дүйнөдөгү эң тез өнүгүп жаткан жана эң популярдуу программалоо тилинин негиздерин үйрөнүңүз.Бул курс программалоонун фундаменталдык негиздерин жана Python программалоо тилин үйрөнүү үчүн эң жакшы. Курсту аяктаган соң, Python тилинде программалоону өздөштүрүп, өз долбоорлоруңузду курганга даяр болуп калсыз.',
              iconUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
              level: 1,
              lessons: [
                Lessons(
                  name: 'Lessons 1',
                  status: LessonsStatus.done,
                ),
                Lessons(
                  name: 'Lessons 2',
                  status: LessonsStatus.inProgres,
                ),
                Lessons(
                  name: 'Lessons 3',
                  status: LessonsStatus.didntStart,
                ),
                Lessons(
                  name: 'Lessons 1',
                  status: LessonsStatus.done,
                ),
                Lessons(
                  name: 'Lessons 2',
                  status: LessonsStatus.inProgres,
                ),
                Lessons(
                  name: 'Lessons 3',
                  status: LessonsStatus.didntStart,
                ),
                Lessons(
                  name: 'Lessons 1',
                  status: LessonsStatus.done,
                ),
                Lessons(
                  name: 'Lessons 2',
                  status: LessonsStatus.inProgres,
                ),
                Lessons(
                  name: 'Lessons 3',
                  status: LessonsStatus.didntStart,
                ),
                Lessons(
                  name: 'Lessons 1',
                  status: LessonsStatus.done,
                ),
                Lessons(
                  name: 'Lessons 2',
                  status: LessonsStatus.inProgres,
                ),
                Lessons(
                  name: 'Lessons 3',
                  status: LessonsStatus.didntStart,
                ),
              ],
              progress: 24),
          Course(
              name: 'JavaScript',
              iconUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
              level: 2,
              lessons: [
                Lessons(
                  name: 'Lessons 1',
                  status: LessonsStatus.done,
                ),
                Lessons(
                  name: 'Lessons 2',
                  status: LessonsStatus.inProgres,
                ),
                Lessons(
                  name: 'Lessons 3',
                  status: LessonsStatus.didntStart,
                ),
              ],
              progress: 56),
        ];

        const List<Course> listOfCourse = [
          Course(
            name: 'Typescript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 3,
            lessons: [
              Lessons(
                name: 'Lessons 1',
                status: LessonsStatus.done,
              ),
              Lessons(
                name: 'Lessons 2',
                status: LessonsStatus.inProgres,
              ),
              Lessons(
                name: 'Lessons 3',
                status: LessonsStatus.didntStart,
              ),
            ],
          ),
          Course(
            name: 'Java',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 1,
            lessons: [
              Lessons(
                name: 'Lessons 1',
                status: LessonsStatus.done,
              ),
              Lessons(
                name: 'Lessons 2',
                status: LessonsStatus.inProgres,
              ),
              Lessons(
                name: 'Lessons 3',
                status: LessonsStatus.didntStart,
              ),
            ],
          ),
          Course(
            name: 'JavaScript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 2,
            lessons: [
              Lessons(
                name: 'Lessons 1',
                status: LessonsStatus.done,
              ),
              Lessons(
                name: 'Lessons 2',
                status: LessonsStatus.inProgres,
              ),
            ],
          ),
          Course(
            name: 'JavaScript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 1,
            lessons: [
              Lessons(
                name: 'Lessons 1',
                status: LessonsStatus.done,
              ),
              Lessons(
                name: 'Lessons 2',
                status: LessonsStatus.inProgres,
              ),
              Lessons(
                name: 'Lessons 3',
                status: LessonsStatus.didntStart,
              ),
            ],
          ),
          Course(
            name: 'JavaScript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 2,
            lessons: [],
          ),
        ];

        emit(
          state.copyWith(
            listOfCourse: listOfCourse,
            myListOfCourse: myListOfCourse,
            loading: false,
          ),
        );
      },
    );
  }
}
