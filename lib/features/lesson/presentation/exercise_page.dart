/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:bilimapp/core/common/dialogs.dart';
import 'package:bilimapp/core/init/lang/locale_keys.g.dart';
import 'package:bilimapp/core/injection/injection.dart';
import 'package:bilimapp/features/lesson/presentation/bloc/lesson_bloc.dart';
import 'package:bilimapp/features/lesson/presentation/screens/code_screen.dart';
import 'package:bilimapp/features/lesson/presentation/screens/exercise_screen.dart';
import 'package:bilimapp/features/lesson/presentation/screens/result_screen.dart';

/* Local dependencies */
import 'package:bilimapp/features/models/track.dart';
import '../../../core/helpers/colors.dart';
import '../../../core/helpers/screen_util.dart';
import '../../../core/helpers/text_styles.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({
    super.key,
    required this.exercise,
  });

  final Exercise exercise;

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final LessonBloc _bloc = getIt<LessonBloc>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    _bloc.setExerciseEvent(widget.exercise);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Scaffold(
      key: _scaffoldKey,
      // drawer: Drawer(
      //   child: ListView(
      //     shrinkWrap: true,
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text('Drawer Header'),
      //       ),
      //       ListView.builder(
      //         shrinkWrap: true,
      //         physics: const NeverScrollableScrollPhysics(),
      //         itemCount: widget.lesson.lesson_exercises.length,
      //         itemBuilder: (context, index) {
      //           final Exercise exercise = widget.lesson.lesson_exercises[index];

      //           return ListTile(
      //             title: Text(exercise.name),
      //             onTap: () {
      //               _bloc.add(SetExerciseEvent(exercise: exercise));
      //               Navigator.pop(context);
      //             },
      //           );
      //         },
      //       )
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.menu),
        //     onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        //   ),
        // ],
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigation.router.pop();
        //   },
        // ),
        title: Text(widget.exercise.name),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: KodJazColors.blue,
          labelColor: KodJazColors.black,
          labelStyle: KodjazTextStyle.fS14FW500,
          unselectedLabelStyle: KodjazTextStyle.fS14FW400,
          tabs: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: const Text(LocaleKeys.exercise).tr(),
            ),
            const Text(LocaleKeys.code).tr(),
            const Text(LocaleKeys.result).tr(),
          ],
        ),
      ),
      body: BlocConsumer<LessonBloc, LessonState>(
        bloc: _bloc,
        listener: (context, state) {
          if (state.running) {
            CustomProgressIndicator.matrixProgressIndicator(
              message: LocaleKeys.running.tr(),
            );
          } else {
            SmartDialog.dismiss();
          }
        },
        builder: (context, state) {
          final Exercise? exercise = state.exercise;
          if (exercise != null) {
            return TabBarView(
              controller: _tabController,
              children: [
                ExerciseScreen(exercise: exercise),
                CodeScreen(
                  exercise: exercise,
                  onRun: () {
                    _tabController.animateTo(_tabController.length - 1);
                  },
                ),
                ResultScreen(),
              ],
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
