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
      child: Padding(
        padding: const EdgeInsets.all(15.0).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exercise.name,
              style: KodjazTextStyle.fS16FW600,
            ),
            SizedBox(height: 10.h),
            Text(
              exercise.lecture,
              style: KodjazTextStyle.fS15FW400,
            ),
            SizedBox(height: 10.h),
            Text(
              "Тапшырма",
              style: KodjazTextStyle.fS15FW600,
            ),
            Text(
              exercise.instruction,
              style: KodjazTextStyle.fS15FW400,
            ),
            SizedBox(height: 10.h),
            Text(
              "Кыйытма",
              style: KodjazTextStyle.fS15FW600,
            ),
            Text(
              exercise.hint,
              style: KodjazTextStyle.fS15FW400,
            ),
          ],
        ),
      ),
    );
  }
}
