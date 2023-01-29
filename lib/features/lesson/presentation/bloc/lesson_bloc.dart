/* External dependencies */
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

/* Local dependencies */
import '../../repository/lesson_repository.dart';
import 'package:kodjaz/features/lesson/model/run_code.dart';
import 'package:kodjaz/features/models/track.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';
part 'lesson_bloc.freezed.dart';

@lazySingleton
class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final LessonRepository _repo;

  LessonBloc(this._repo) : super(LessonState()) {
    on<SetExerciseEvent>(
      (event, emit) async {
        emit(state.copyWith(exercise: event.exercise));
      },
    );

    on<RunExerciseEvent>(
      (event, emit) async {
        emit(state.copyWith());

        await _repo
            .runCode(
          RunCode(
            submitted_code: event.submitted_code,
            id: event.id,
          ),
        )
            .then((r) {
          log(r);

          emit(
            state.copyWith(
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
