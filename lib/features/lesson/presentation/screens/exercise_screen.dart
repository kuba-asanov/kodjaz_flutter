import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodjaz/features/models/track.dart';

import '../../../../core/helpers/text_styles.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({
    super.key,
    required this.exercise,
  });

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Text(
              exercise.name,
              style: KodjazTextStyle.fS14FW600,
            ),
          ),
          Text(
            exercise.lecture,
            style: KodjazTextStyle.fS14FW400,
          ),
        ],
      ),
    );
  }
}
