/* External Dependencies */
import 'package:flutter/material.dart';

/* Local Dependencies */
import 'package:kodjaz/core/helpers/colors.dart';

import '../screen_util.dart';

class BottomSheetIndicator extends StatelessWidget {
  const BottomSheetIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        height: 5,
        width: 40,
        decoration: BoxDecoration(
          color: KodJazColors.grey5,
          border: Border.all(
            width: 1,
            color: KodJazColors.grey5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
