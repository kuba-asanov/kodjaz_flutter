import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';

class CustomCodeBox extends StatefulWidget {
  const CustomCodeBox({
    super.key,
    this.source,
    this.language,
    this.theme,
  });

  final String? language;
  final String? theme;
  final String? source;

  @override
  State<CustomCodeBox> createState() => _CustomCodeBoxState();
}

class _CustomCodeBoxState extends State<CustomCodeBox> {
  CodeController? _codeController;

  @override
  void initState() {
    super.initState();
    final source =
        widget.source ?? "void main() {\n    print(\"Hello, world!\");\n}";
    // Instantiate the CodeController
    _codeController = CodeController(
      text: source,
      // language: widget.language,
      // theme: widget.theme,
    );
  }

  @override
  void dispose() {
    _codeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CodeField(
      controller: _codeController!,
      // textStyle: TextStyle(fontFamily: 'SourceCode'),
    );
  }
}
