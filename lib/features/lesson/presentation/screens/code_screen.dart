import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kodjaz/features/lesson/presentation/bloc/lesson_bloc.dart';
import '../../../../core/injection/injection.dart';
import '../widgets/code_box.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({super.key});

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonBloc, LessonState>(
      bloc: getIt<LessonBloc>(),
      builder: (context, state) {
        return SingleChildScrollView(
          child: CustomCodeBox(
            source: state.exercise?.default_code,
          ),
        );
      },
    );
  }
}
