/* External dependencies*/
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kodjaz/features/models/dummy_data.dart';
import 'package:kodjaz/features/quiz/bloc/test_state.dart';

/* Local dependencies*/
import '../models/quiz.dart';

@lazySingleton
class TestCubit extends Cubit<TestState> {
  TestCubit(
      // this._gqlService,
      )
      : super(TestState());

  // final GraphQLService _gqlService;

  void changeCurrentPageNext() {
    if (state.currentPage < state.questions.length) {
      emit(
        state.copyWith(
          currentPage: state.currentPage + 1,
        ),
      );
    }
  }

  void changeCurrentPagePrevious() {
    if (state.currentPage > 1) {
      emit(
        state.copyWith(
          currentPage: state.currentPage - 1,
        ),
      );
    }
  }

  void changeUserAnswer({required UserAnswer userAnswer, required int index}) {
    List<Question> questions = [...state.modifiedQuestions];
    List<UserAnswer> userAnswers = [...state.userAnswers];

    questions[index] = state.modifiedQuestions[index].copyWith(
        userAnswerId:
            userAnswer.answerId == state.modifiedQuestions[index].userAnswerId
                ? null
                : userAnswer.answerId);

    if (userAnswers.contains(userAnswer)) {
      userAnswers.remove(userAnswer);
    } else {
      userAnswers
          .removeWhere((answer) => answer.questionId == userAnswer.questionId);
      userAnswers.add(userAnswer);
    }

    log(userAnswers.toString());

    emit(
      state.copyWith(
        modifiedQuestions: questions,
        userAnswers: userAnswers,
      ),
    );
  }

  void getTests(String? quizId) async {
    emit(state.copyWith(loading: true));

    emit(
      state.copyWith(
        loading: false,
        questions: DUMMY_TESTS,
        modifiedQuestions: DUMMY_TESTS,
        userAnswers: [],
      ),
    );
  }

  void resetTest() {
    emit(state.copyWith(
      currentPage: 1,
      userAnswers: [],
      modifiedQuestions: state.questions,
    ));
  }

  void completeTest(String? quizId, int duration) async {
    emit(state.copyWith(loading: true));

    emit(
      state.copyWith(
        results: Results(),
        questions: DUMMY_TESTS,
        modifiedQuestions: [],
        loading: false,
      ),
    );
  }
}
