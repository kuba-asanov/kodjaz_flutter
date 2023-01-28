import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodjaz/features/lesson/presentation/bloc/lesson_bloc.dart';

import '../../../../core/helpers/text_styles.dart';
import '../../../../core/injection/injection.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonBloc, LessonState>(
      bloc: getIt<LessonBloc>(),
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  state.exercise?.name ?? 'Name',
                  style: KodjazTextStyle.fS14FW600,
                ),
              ),
              Text(
                state.exercise?.lecture ?? 'Lecture',
                style: KodjazTextStyle.fS14FW400,
              ),
            ],
          ),
        );
      },
    );
  }
}
