/* External dependencies */
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bilimapp/features/quiz/presentation/widgets/test_body.dart';
import 'package:bilimapp/features/quiz/presentation/widgets/test_button_bar.dart';
import 'package:bilimapp/features/quiz/presentation/widgets/top_progress_bar.dart';

/* Local dependencies */
import '../../../core/helpers/screen_util.dart';
import '../../../core/helpers/text_styles.dart';
import '../../../core/injection/injection.dart';
import '../../../core/utils/timer/cubit/timer_cubit.dart';
import '../bloc/test_cubit.dart';
import '../bloc/test_state.dart';
import '../models/quiz.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/quiz_bottomsheets/quiz_bottomsheets.dart';

class ActionTimerWidget extends StatelessWidget {
  final String time;

  const ActionTimerWidget({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Padding(
      padding: const EdgeInsets.only(right: 20).r,
      child: Text(
        time,
        style: KodjazTextStyle.fS16FW700,
      ),
    );
  }
}

class TestPage extends StatefulWidget {
  final TimerCubit? timerCubitForTest;
  final Quiz? quiz;

  const TestPage({
    Key? key,
    this.timerCubitForTest,
    this.quiz,
  }) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final TestCubit testCubit = getIt<TestCubit>();
  late final TimerCubit timerCubit;
  // final ScreenShootSecurity screenShootSecurity = ScreenShootSecurity();

  int seconds = 0;
  int minutes = 0;

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Scaffold(
      appBar: CustomAppBar(
        centerTitle: true,
        title: widget.quiz?.name,
        leading: IconButton(
          splashRadius: 24.sp,
          icon: Icon(
            Icons.close,
            size: 24.sp,
          ),
          onPressed: () {
            QuizBottomSheet.exitFromTest(context);
          },
        ),
        actions: [
          Center(
            child: BlocBuilder<TimerCubit, TimerState>(
              bloc: timerCubit,
              builder: (context, state) {
                if (state is TimerRunning) {
                  return ActionTimerWidget(
                    time: formatHHMMSS(state.count),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        bottom: !Platform.isIOS,
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 44,
              ).r,
              child: TestBody(testCubit: testCubit),
            ),
            BlocBuilder<TestCubit, TestState>(
              bloc: testCubit,
              buildWhen: (previous, current) =>
                  previous.currentPage != current.currentPage ||
                  previous.modifiedQuestions != current.modifiedQuestions,
              builder: (context, state) {
                return TopProgressBarWidget(
                  width: MediaQuery.of(context).size.width *
                      (testCubit.state.currentPage /
                          (testCubit.state.modifiedQuestions.length / 100)) /
                      100,
                  height: 4.h,
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        bottom: !Platform.isIOS,
        child: BlocConsumer<TimerCubit, TimerState>(
          listener: (context, state) {
            if (state is TimerRunning) {
              seconds = state.count;
            } else if (state is TimerEnd) {
              testCubit.completeTest(widget.quiz?.quizId,
                  testCubit.state.modifiedQuestions.length * 60);
              // Navigation.router.pushAndPopUntil(
              //   TestTimerOverRoute(
              //     answeredQuestions:
              //         testCubit.state.userAnswers.length.toString(),
              //     quantityQuestions:
              //         testCubit.state.modifiedQuestions.length.toString(),
              //     onTap: () {
              //       Navigation.router.pushAndPopUntil(
              //         TestCompletionRoute(timerCubit: timerCubit),
              //         predicate: (route) => route.settings.name == 'DrugsRoute',
              //       );
              //     },
              //   ),
              //   predicate: (route) => route.settings.name == 'DrugsRoute',
              // );
            }
          },
          bloc: timerCubit,
          builder: (context, state) {
            return TestButtonBar(
              timerCubit: timerCubit,
              testCubit: testCubit,
              timerState: state is TimerRunning ? state : null,
              quiz: widget.quiz,
            );
          },
        ),
      ),
    );
  }

  // @override
  // void deactivate() async {
  //   await screenShootSecurity.screenshotEnable();
  //   super.deactivate();
  // }

  // @override
  // void didChangeDependencies() async {
  //   await screenShootSecurity.screenshotDisable();
  //   super.didChangeDependencies();
  // }

  @override
  void dispose() {
    // screenShootSecurity.dispose();
    testCubit.resetTest();
    super.dispose();
  }

  @override
  void initState() {
    timerCubit = widget.timerCubitForTest ?? TimerCubit();
    timerCubit.startTimer(60 * testCubit.state.modifiedQuestions.length);

    super.initState();
  }
}
