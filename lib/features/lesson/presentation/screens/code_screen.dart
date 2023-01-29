import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:kodjaz/core/common/common_widgets.dart';
import 'package:kodjaz/core/injection/injection.dart';
import 'package:kodjaz/features/lesson/presentation/bloc/lesson_bloc.dart';
import '../../../models/track.dart';
import '../widgets/code_snippets.dart';
import '../widgets/custom_code_box.dart';
import 'package:highlight/languages/all.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({
    super.key,
    required this.exercise,
  });

  final Exercise exercise;

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  CodeController? _codeController;

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
    _codeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            CustomCodeBox(
              // language: exercise.name.toLowerCase(),
              language: "python",
              theme: "monokai-sublime",
              source: widget.exercise.default_code,
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 40,
              width: 150,
              child: PrimaryButton(
                title: "RUN",
                icon: const Icon(Icons.play_arrow_rounded),
                onPressed: () {
                  getIt<LessonBloc>().add(
                    RunExerciseEvent(
                      id: widget.exercise.id,
                      submitted_code: _codeController?.text ?? '',
                    ),
                  );
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
