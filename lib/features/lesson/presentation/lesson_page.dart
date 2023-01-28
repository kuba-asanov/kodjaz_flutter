/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodjaz/core/injection/injection.dart';
import 'package:kodjaz/features/lesson/presentation/bloc/lesson_bloc.dart';
import 'package:kodjaz/features/lesson/presentation/screens/code_screen.dart';
import 'package:kodjaz/features/lesson/presentation/screens/exercise_screen.dart';
import 'package:kodjaz/features/lesson/presentation/screens/result_screen.dart';

/* Local dependencies */
import 'package:kodjaz/features/models/track.dart';
import '../../../core/helpers/colors.dart';
import '../../../core/helpers/screen_util.dart';
import '../../../core/helpers/text_styles.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({
    super.key,
    required this.lesson,
  });

  final Lesson lesson;

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> with TickerProviderStateMixin {
  late final TabController _tabController;
  final LessonBloc _bloc = getIt<LessonBloc>();

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    _bloc.add(
      SetExerciseEvent(exercise: widget.lesson.lesson_exercises.first),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lesson.name),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: KodJazColors.blue,
          labelColor: KodJazColors.black,
          labelStyle: KodjazTextStyle.fS14FW500,
          unselectedLabelStyle: KodjazTextStyle.fS14FW400,
          tabs: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: const Text("Задача"),
            ),
            const Text("Код"),
            const Text("Результат"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ExerciseScreen(),
          CodeScreen(),
          ResultScreen(),
        ],
      ),
    );
  }
}
