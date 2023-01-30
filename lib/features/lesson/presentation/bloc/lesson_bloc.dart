/* External dependencies */
import 'dart:developer';

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
class LessonBloc extends Cubit<LessonState> {
  final LessonRepository _repo;

  LessonBloc(this._repo) : super(LessonState());

  void setExerciseEvent(Exercise exercise) {
    emit(LessonState(exercise: exercise));
  }

  Future<void> runExerciseEvent(String submitted_code, int id) async {
    emit(state.copyWith(running: true));

    try {
      final CodeAnswer result = await _repo.runCode(
        RunCode(
          submitted_code: submitted_code,
          exercise: id,
        ),
      );

      log("result: $result");

      emit(state.copyWith(
        running: false,
        codeAnswer: result,
      ));
    } catch (e) {
      log("error: $e");

      emit(state.copyWith(
        running: false,
      ));
    }
  }
}
