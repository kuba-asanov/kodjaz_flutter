/*External dependencies*/
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';
import 'package:kodjaz/features/quiz/presentation/widgets/quiz_bottomsheets/quiz_bottomsheets.dart';
import 'dart:ui' as ui;

import '../../../../core/helpers/screen_util.dart';
import '../../../../core/navigation/navigation.dart';
import '../../../../core/utils/timer/cubit/timer_cubit.dart';
import '../../bloc/test_cubit.dart';
import '../../bloc/test_state.dart';
import '../../models/quiz.dart';

/*Local dependencies*/

class TestButtonBar extends StatelessWidget {
  final TimerRunning? timerState;
  final TestCubit testCubit;
  final TimerCubit? timerCubit;
  final Quiz? quiz;
  final bool isAnswerPage;

  const TestButtonBar({
    Key? key,
    this.timerState,
    required this.testCubit,
    this.isAnswerPage = false,
    this.timerCubit,
    this.quiz,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return BlocBuilder<TestCubit, TestState>(
      buildWhen: (previous, current) =>
          previous.currentPage != current.currentPage,
      bloc: testCubit,
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.only(
            bottom: 40.h,
            left: 16.w,
            right: 16.w,
          ).r,
          color: KodJazColors.white,
          child: Row(
            children: [
              state.currentPage == 1
                  ? const SizedBox()
                  : Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          testCubit.changeCurrentPagePrevious();
                        },
                        icon: Icon(
                          Icons.chevron_left,
                          size: 24.sm,
                        ),
                        label: Text(
                          LocaleKeys.previous.toUpperCase().tr(),
                          style: KodjazTextStyle.fS14FW700
                              .copyWith(color: KodJazColors.PrimaryColor),
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: KodJazColors.PrimaryColor,
                          backgroundColor: KodJazColors.white,
                          side: const BorderSide(
                              color: KodJazColors.PrimaryColor),
                          minimumSize: Size(165.w, 40.h),
                        ),
                      ),
                    ),
              SizedBox(width: 8.h),
              state.currentPage == state.questions.length
                  ? Expanded(
                      child: ElevatedButton(
                        key: const Key('quiz_ready_button'),
                        onPressed: () {
                          if (isAnswerPage) {
                            Navigation.router.pop();
                            testCubit.resetTest();
                          } else {
                            QuizBottomSheet.completeTest(
                              context,
                              timerCubit: timerCubit!,
                              testCubit: testCubit,
                              quiz: quiz,
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: KodJazColors.white,
                          backgroundColor: KodJazColors.PrimaryColor,
                          side: const BorderSide(
                              color: KodJazColors.PrimaryColor),
                          minimumSize: Size(165.w, 40.h),
                        ),
                        child: Text(
                          LocaleKeys.ready.toUpperCase().tr(),
                          style: KodjazTextStyle.fS14FW700,
                        ),
                      ),
                    )
                  : Expanded(
                      child: Directionality(
                        textDirection: ui.TextDirection.rtl,
                        child: ElevatedButton.icon(
                          key: const Key('quiz_next_button'),
                          onPressed: () {
                            testCubit.changeCurrentPageNext();
                          },
                          label: Text(
                            LocaleKeys.following.toUpperCase().tr(),
                            style: KodjazTextStyle.fS14FW700
                                .copyWith(color: KodJazColors.white),
                          ),
                          icon: Icon(
                            Icons.chevron_left,
                            size: 24.sp,
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: KodJazColors.white,
                            backgroundColor: KodJazColors.PrimaryColor,
                            side: const BorderSide(
                                color: KodJazColors.PrimaryColor),
                            minimumSize: state.currentPage == 1
                                ? Size(double.maxFinite, 40.h)
                                : Size(165.w, 40.h),
                          ),
                        ),
                      ),
                    ),
              SizedBox(height: 55.h),
            ],
          ),
        );
      },
    );
  }
}
