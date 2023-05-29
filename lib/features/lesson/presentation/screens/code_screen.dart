import 'package:code_text_field/code_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bilimapp/core/common/common_widgets.dart';
import 'package:bilimapp/core/injection/injection.dart';
import 'package:bilimapp/features/lesson/presentation/bloc/lesson_bloc.dart';
import '../../../../core/helpers/screen_util.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../models/track.dart';
import '../widgets/custom_code_box.dart';
import 'package:highlight/languages/all.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({
    super.key,
    required this.exercise,
    this.onRun,
  });

  final Exercise exercise;
  final Function? onRun;

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  late CodeController _codeController;

  @override
  void initState() {
    super.initState();
    _codeController = CodeController(
      text: widget.exercise.default_code,
      patternMap: const {
        r"\B#[a-zA-Z0-9]+\b": TextStyle(color: Colors.red),
        r"\B@[a-zA-Z0-9]+\b": TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.blue,
        ),
        r"\B![a-zA-Z0-9]+\b":
            TextStyle(color: Colors.yellow, fontStyle: FontStyle.italic),
      },
      stringMap: {
        "bev": const TextStyle(color: Colors.indigo),
      },
      language: allLanguages["python"],
    );
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            CustomCodeBox(
              // language: exercise.name.toLowerCase(),
              language: "python",
              theme: "monokai-sublime", codeController: _codeController,
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 35.h,
              width: 250.w,
              child: PrimaryButton(
                title: LocaleKeys.run.tr().toUpperCase(),
                icon: const Icon(Icons.play_arrow_rounded),
                onPressed: () async {
                  final LessonBloc bloc = getIt<LessonBloc>();

                  await bloc.runExerciseEvent(
                    _codeController.text,
                    widget.exercise.id,
                  );

                  if (widget.onRun != null) widget.onRun!();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

// final preset = <String>[
//       "dart|monokai-sublime",
//       "python|atom-one-dark",
//       "cpp|an-old-hope",
//       "java|a11y-dark",
//       "javascript|vs",
//     ];
