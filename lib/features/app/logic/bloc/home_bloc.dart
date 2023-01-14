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
              iconUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
              level: 1,
              lessonsCount: 12,
              progress: 24),
          Course(
              name: 'JavaScript',
              iconUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
              level: 2,
              lessonsCount: 12,
              progress: 56),
        ];

        const List<Course> listOfCourse = [
          Course(
            name: 'Typescript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 3,
            lessonsCount: 40,
          ),
          Course(
            name: 'Java',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 1,
            lessonsCount: 34,
          ),
          Course(
            name: 'JavaScript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 2,
            lessonsCount: 12,
          ),
          Course(
            name: 'JavaScript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 1,
            lessonsCount: 12,
          ),
          Course(
            name: 'JavaScript',
            iconUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCebckBUnQ-QHmJFYejy_HkzrBo4_s6vPX-w&usqp=CAU',
            level: 2,
            lessonsCount: 12,
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
