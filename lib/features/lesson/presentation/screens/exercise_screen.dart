import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
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
            MarkdownBody(
              data: exercise.lecture,
              styleSheet: MarkdownStyleSheet(
                p: KodjazTextStyle.fS15FW400,
                code: KodjazTextStyle.fS14FW600,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Тапшырма",
              style: KodjazTextStyle.fS15FW600,
            ),
            MarkdownBody(
              data: exercise.instruction,
              styleSheet: MarkdownStyleSheet(
                code: KodjazTextStyle.fS14FW600,
                p: KodjazTextStyle.fS15FW400,
              ),
            ),
            SizedBox(height: 10.h),
            ExpandablePanel(
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                iconSize: 30,
              ),
              header: Text(
                "Кыйытма",
                style: KodjazTextStyle.fS15FW600,
              ),
              expanded: MarkdownBody(
                data: exercise.hint,
                styleSheet: MarkdownStyleSheet(
                  code: KodjazTextStyle.fS14FW600,
                  p: KodjazTextStyle.fS15FW400,
                ),
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
              collapsed: const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
