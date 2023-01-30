import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart' show parse;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:highlight/languages/all.dart';

import '../../../../core/helpers/text_styles.dart';
import '../../../../core/injection/injection.dart';
import '../bloc/lesson_bloc.dart';
import '../widgets/custom_code_box.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});

  final LessonBloc _bloc = getIt<LessonBloc>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: BlocBuilder<LessonBloc, LessonState>(
          buildWhen: (p, c) => p.codeAnswer != c.codeAnswer,
          bloc: _bloc,
          builder: (context, state) {
            final bool passed = state.codeAnswer?.passed ?? false;

            return Column(
              children: [
                CustomCodeBox(
                  readOnly: true,
                  language: "python",
                  theme: "monokai-sublime",
                  codeController:
                      CodeController(text: state.codeAnswer?.console_output),
                ),
                SizedBox(height: 4.h),
                Padding(
                  padding: const EdgeInsets.all(8.0).r,
                  child: Text(
                    passed
                        ? "Жарайсыз! Эми кийинкиге өтүңүз!"
                        : parse(state.codeAnswer?.error_message ?? "")
                                .body
                                ?.text ??
                            "",
                    style: KodjazTextStyle.fS16FW500.copyWith(
                      color: passed ? null : Colors.red,
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
