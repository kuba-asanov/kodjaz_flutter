/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodjaz/core/helpers/colors.dart';
import 'package:kodjaz/core/helpers/text_styles.dart';
import 'package:kodjaz/core/init/lang/locale_keys.g.dart';
import 'package:kodjaz/core/navigation/auto_route.gr.dart';

import '../../../core/common/common_widgets.dart';
import '../../../core/injection/injection.dart';
import '../../../core/navigation/navigation.dart';
import '../bloc/test_cubit.dart';

/* Local dependencies */

class QuiaInstructionPage extends StatefulWidget {
  final String quizId;
  const QuiaInstructionPage({
    required this.quizId,
    super.key,
  });

  @override
  State<QuiaInstructionPage> createState() => _QuiaInstructionPageState();
}

class _QuiaInstructionPageState extends State<QuiaInstructionPage> {
  final TestCubit testCubit = getIt<TestCubit>();

  @override
  void initState() {
    testCubit.getTests(widget.quizId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(LocaleKeys.verificationTest.tr()),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigation.router.pop();
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16).r,
        physics: const BouncingScrollPhysics(),
        children: [
          _IconTextInfoWidget(
            text: LocaleKeys.answerTheQuestions.tr(),
            styles: KodjazTextStyle.fS15FW600,
            secondaryText: LocaleKeys.youWillHaveMinutesToCompleteTheTest.tr(),
            assets: 'assets/images/svg/Wall-Clock.png',
            iconWidth: 84.w,
            iconHeight: 100.h,
          ),
          _IconTextInfoWidget(
            text: LocaleKeys.getPercentOrMore.tr(),
            secondaryText: LocaleKeys.maximumPoints.tr(),
            assets: 'assets/images/svg/Analysis-Growth-Graph.png',
            styles: KodjazTextStyle.fS15FW600,
            iconWidth: 74.w,
            iconHeight: 95.h,
          ),
          _IconTextInfoWidget(
            text: LocaleKeys.testPassingSpeed.tr(),
            secondaryText:
                LocaleKeys.theFasterYouCompleteTheTestTheMorePointsYouEarn.tr(),
            styles: KodjazTextStyle.fS15FW600,
            assets: 'assets/images/svg/Vectary-texture.png',
            iconWidth: 90.w,
            iconHeight: 131.h,
          ),
          _IconTextInfoWidget(
            text: LocaleKeys.learnAndWinPrizes.tr(),
            secondaryText: LocaleKeys.earnPointsAndRedeemForPrizes.tr(),
            styles: KodjazTextStyle.fS15FW600,
            assets: 'assets/images/svg/Gift-Box.png',
            iconWidth: 81.w,
            iconHeight: 61.h,
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).r,
        child: PrimaryButton(
          title: LocaleKeys.start.tr(),
          onPressed: () {
            Navigation.router.push(TestRoute());
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _IconTextInfoWidget extends StatelessWidget {
  const _IconTextInfoWidget({
    Key? key,
    this.assets,
    this.text,
    this.secondaryText,
    this.styles,
    this.iconWidth,
    this.iconHeight,
  }) : super(key: key);

  final String? assets;
  final String? text;
  final String? secondaryText;
  final TextStyle? styles;
  final double? iconWidth;
  final double? iconHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (assets != null)
          Expanded(
            flex: 1,
            child: Image.asset(
              assets!,
              width: iconWidth ?? 56.w,
              height: iconHeight ?? 56.h,
            ),
          ),
        SizedBox(width: 25.h),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (text != null)
                Text(
                  text!,
                  style: styles ?? TextStyle(fontSize: 18.sp),
                ),
              SizedBox(height: 4.h),
              if (secondaryText != null)
                Text(
                  secondaryText!,
                  style: KodjazTextStyle.fS15FW500
                      .copyWith(color: KodJazColors.SecondaryColor),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
