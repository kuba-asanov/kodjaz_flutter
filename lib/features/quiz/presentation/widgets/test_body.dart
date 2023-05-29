/*External dependencies*/
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';

import '../../../../core/helpers/screen_util.dart';
import '../../bloc/test_cubit.dart';
import '../../bloc/test_state.dart';
import '../../models/quiz.dart';

/*Local dependencies*/

class TestBody extends StatelessWidget {
  final TestCubit testCubit;
  final bool isAnswerPage;

  const TestBody({
    Key? key,
    required this.testCubit,
    this.isAnswerPage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return BlocBuilder<TestCubit, TestState>(
      bloc: testCubit,
      buildWhen: (previous, current) =>
          previous.currentPage != current.currentPage ||
          previous.modifiedQuestions != current.modifiedQuestions,
      builder: (context, state) {
        Question currentQuestion =
            state.modifiedQuestions[state.currentPage - 1];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${LocaleKeys.question.tr()} ${state.currentPage}/${state.modifiedQuestions.length}',
              style: KodjazTextStyle.fS15FW500
                  .copyWith(color: KodJazColors.SecondaryColor),
            ),
            SizedBox(height: 16.h),
            Text(
              currentQuestion.question,
              style: KodjazTextStyle.fS15FW400.copyWith(height: 1.5.h),
            ),
            SizedBox(height: 16.h),
            SizedBox(height: 20.h),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              shrinkWrap: true,
              itemCount: currentQuestion.answers.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: KodJazColors.grey3),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: RadioListTile<String>(
                    key: Key('radio $index'),
                    toggleable: true,
                    value: currentQuestion.userAnswerId ?? '',
                    groupValue: currentQuestion.answers[index].answerId,
                    onChanged: (String? value) => testCubit.changeUserAnswer(
                      userAnswer: UserAnswer(
                        answerId: currentQuestion.answers[index].answerId,
                        questionId: currentQuestion.questionId,
                      ),
                      index: state.currentPage - 1,
                    ),
                    activeColor: _getColor(
                      currentQuestion,
                      index,
                      KodJazColors.correctAnswerBorderColor,
                      KodJazColors.red,
                      KodJazColors.black,
                      false,
                    ),
                    tileColor: _getColor(
                        currentQuestion,
                        index,
                        KodJazColors.correctAnswerBorderColor,
                        KodJazColors.red.withOpacity(0.2),
                        Colors.transparent,
                        currentQuestion.userAnswerId ==
                            currentQuestion.answers[index].answerId),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: _getColor(
                            currentQuestion,
                            index,
                            KodJazColors.correctAnswerBorderColor,
                            KodJazColors.red,
                            KodJazColors.stroke,
                            currentQuestion.userAnswerId ==
                                currentQuestion.answers[index].answerId),
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    title: Text(
                      currentQuestion.answers[index].answer,
                      style: KodjazTextStyle.fS15FW400.copyWith(
                        color: _getColor(
                          currentQuestion,
                          index,
                          KodJazColors.correctAnswerBorderColor,
                          KodJazColors.red,
                          KodJazColors.black,
                          false,
                        ),
                      ),
                    ),
                    subtitle: isAnswerPage
                        ? _getSubtitle(
                            isAnswerPage,
                            currentQuestion,
                            index,
                            context,
                          )
                        : null,
                  ),
                );
              },
            ),
            SizedBox(height: 16.h),
            isAnswerPage && currentQuestion.description.isNotEmpty
                ? Container(
                    width: 1.sw,
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: KodJazColors.correctAnswerBorderColor,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys.explanation.tr(),
                          style: KodjazTextStyle.fS15FW700.copyWith(
                            color: KodJazColors.correctAnswerBorderColor,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          currentQuestion.description,
                          style: KodjazTextStyle.fS15FW400.copyWith(
                              color: KodJazColors.correctAnswerBorderColor),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
          ],
        );
      },
    );
  }

  _getColor(
    Question currentQuestion,
    int index,
    Color successColor,
    Color failColor,
    Color defaultColor,
    bool isSelected,
  ) {
    if (!isAnswerPage) {
      if (isSelected) {
        return KodJazColors.grey3;
      }
      return defaultColor;
    } else {
      if (currentQuestion.correctAnswerId ==
              currentQuestion.answers[index].answerId ||
          (currentQuestion.userAnswerId == currentQuestion.correctAnswerId &&
              currentQuestion.correctAnswerId ==
                  currentQuestion.answers[index].answerId)) {
        return successColor;
      } else if (currentQuestion.userAnswerId ==
          currentQuestion.answers[index].answerId) {
        return failColor;
      } else {
        return defaultColor;
      }
    }
  }

  _getSubtitle(
    bool isAnswerPage,
    Question currentQuestion,
    int index,
    context,
  ) {
    if (!isAnswerPage) {
      return const SizedBox();
    } else {
      if (currentQuestion.correctAnswerId ==
              currentQuestion.answers[index].answerId ||
          (currentQuestion.userAnswerId == currentQuestion.correctAnswerId &&
              currentQuestion.correctAnswerId ==
                  currentQuestion.answers[index].answerId)) {
        return Text(
          LocaleKeys.correctAnswer.tr(),
          style: KodjazTextStyle.fS15FW700
              .copyWith(color: KodJazColors.correctAnswerBorderColor),
        );
      } else if (currentQuestion.userAnswerId ==
          currentQuestion.answers[index].answerId) {
        return Text(
          LocaleKeys.yourAnswerIncorrect.tr(),
          style: KodjazTextStyle.fS15FW700.copyWith(color: KodJazColors.red),
        );
      } else {
        return const SizedBox();
      }
    }
  }
}
