import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';
import 'package:kodjaz/features/quiz/models/quiz.dart';

import '../../../../../core/common/common_widgets.dart';
import '../../../../../core/helpers/bottomsheets/bottomsheet_indicator.dart';
import '../../../../../core/navigation/navigation.dart';
import '../../../../../core/utils/timer/cubit/timer_cubit.dart';
import '../../../bloc/test_cubit.dart';

class QuizBottomSheet {
  static void completeTest(
    BuildContext context, {
    required TimerCubit timerCubit,
    required TestCubit testCubit,
    Quiz? quiz,
  }) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: KodJazColors.black),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          bottom: !Platform.isIOS,
          child: BlocBuilder<TimerCubit, TimerState>(
            bloc: timerCubit,
            builder: (context, state) {
              if (state is TimerRunning) {
                return Padding(
                  padding: const EdgeInsets.all(16).r,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const BottomSheetIndicator(),
                      SizedBox(height: 32.h),
                      Text(
                        LocaleKeys.finishTest.tr(),
                        style: KodjazTextStyle.fS24FW700,
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        LocaleKeys.youAnswered.tr(namedArgs: {
                          "point": "${testCubit.state.userAnswers.length}",
                          "pointCount": "${testCubit.state.questions.length}"
                        }),
                        style: KodjazTextStyle.fS14FW500,
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            LocaleKeys.youHaveMore.tr(),
                            style: KodjazTextStyle.fS14FW600
                                .copyWith(color: KodJazColors.SecondaryColor),
                          ),
                          Text(
                            LocaleKeys.timeLeft.tr(namedArgs: {
                              "timer": formatHHMMSS(state.count)
                            }),
                            style: KodjazTextStyle.fS14FW600,
                          ),
                        ],
                      ),
                      SizedBox(height: 32.h),
                      PrimaryButton(
                        key: const Key('complete_quiz_button'),
                        title: LocaleKeys.complete.tr(),
                        onPressed: () async {
                          testCubit.completeTest(
                              quiz?.quizId,
                              (60 * testCubit.state.questions.length) -
                                  state.count);

                          // if (Navigation.router.stack.length > 4) {
                          //   Navigation.router.pushAndPopUntil(
                          //     TestCompletionRoute(timerCubit: timerCubit),
                          //     predicate: (route) =>
                          //         route.settings.name == 'DrugsRoute',
                          //   );
                          // } else {
                          //   Navigation.router.pushAndPopUntil(
                          //     TestCompletionRoute(timerCubit: timerCubit),
                          //     predicate: (route) => route.isFirst,
                          //   );
                          // }

                          testCubit.resetTest();
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          Navigation.router.pop();
                        },
                        child: Text(
                          LocaleKeys.Cancel.toUpperCase().tr(),
                          style: KodjazTextStyle.fS14FW700
                              .copyWith(color: KodJazColors.black),
                        ),
                      ),
                    ],
                  ),
                );
              }
              return const SizedBox();
            },
          ),
        );
      },
    );
  }

  static void exitFromTest(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: KodJazColors.black),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          bottom: !Platform.isIOS,
          child: Padding(
            padding: EdgeInsets.all(16.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const BottomSheetIndicator(),
                SizedBox(height: 32.h),
                Text(
                  LocaleKeys.breakTest.tr(),
                  style: KodjazTextStyle.fS24FW700,
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    LocaleKeys.areYouSureAbortTheTest.tr(),
                    style: KodjazTextStyle.fS14FW400,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40.h),
                PrimaryButton(
                  title: LocaleKeys.stay.tr(),
                  onPressed: () {
                    Navigation.router.pop();
                  },
                ),
                TextButton(
                  onPressed: () async {
                    await Navigation.router.pop();
                    Navigation.router.pop();
                  },
                  child: Text(
                    LocaleKeys.interrupt.toUpperCase().tr(),
                    style: KodjazTextStyle.fS14FW700
                        .copyWith(color: KodJazColors.black),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

String formatHHMMSS(int seconds) {
  int hours = (seconds / 3600).truncate();
  seconds = (seconds % 3600).truncate();
  int minutes = (seconds / 60).truncate();
  String hoursStr = (hours).toString().padLeft(2, '0');
  String minutesStr = (minutes).toString().padLeft(2, '0');
  String secondsStr = (seconds % 60).toString().padLeft(2, '0');

  if (hours == 0) {
    return "$minutesStr:$secondsStr";
  }

  return "$hoursStr:$minutesStr:$secondsStr";
}
