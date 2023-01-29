import 'package:flutter/material.dart';
import 'package:code_text_field/code_text_field.dart';
import 'package:highlight/languages/all.dart';

import 'code_snippets.dart';
import 'themes.dart';

class CustomCodeBox extends StatefulWidget {
  final String language;
  final String theme;
  final String? source;

  const CustomCodeBox({
    Key? key,
    required this.language,
    required this.theme,
    this.source,
  }) : super(key: key);

  @override
  _CustomCodeBoxState createState() => _CustomCodeBoxState();
}

class _CustomCodeBoxState extends State<CustomCodeBox> {
  String? language;
  String? theme;

  @override
  void initState() {
    super.initState();
    language = widget.language;
    theme = widget.theme;
  }

  List<String?> get languageList {
    const TOP = <String>{
      "java",
      "cpp",
      "python",
      "javascript",
      "cs",
      "dart",
      "haskell",
      "ruby",
    };

    return <String?>[
      ...TOP,
      null, // Divider
      ...CODE_SNIPPETS.keys.where((el) => !TOP.contains(el))
    ];
  }

  List<String?> get themeList {
    const TOP = <String>{
      "monokai-sublime",
      "a11y-dark",
      "an-old-hope",
      "vs2015",
      "vs",
      "atom-one-dark",
    };
    return <String?>[
      ...TOP,
      null, // Divider
      ...THEMES.keys.where((el) => !TOP.contains(el))
    ];
  }

  Widget buildDropdown(
    Iterable<String?> choices,
    String value,
    IconData icon,
    Function(String?) onChanged,
  ) {
    return DropdownButton<String>(
      value: value,
      focusColor: Colors.black,
      items: choices.map((String? value) {
        return DropdownMenuItem<String>(
          value: value,
          child: value == null
              ? const Divider()
              : Text(
                  value,
                  style: const TextStyle(color: Colors.black),
                ),
        );
      }).toList(),
      icon: Icon(icon, color: Colors.black),
      onChanged: onChanged,
      dropdownColor: Colors.white70,
    );
  }

  @override
  Widget build(BuildContext context) {
    final codeDropdown =
        buildDropdown(languageList, language!, Icons.code, (val) {
      if (val == null) return;
      setState(() => language = val);
    });
    final themeDropdown =
        buildDropdown(themeList, theme!, Icons.color_lens, (val) {
      if (val == null) return;
      setState(() => theme = val);
    });
    final dropdowns = Row(children: [
      // const SizedBox(width: 12.0),
      // codeDropdown,
      const SizedBox(width: 12.0),
      themeDropdown,
    ]);

    final codeField = InnerField(
      key: ValueKey("$language - $theme"),
      language: language!,
      theme: theme!,
      source: widget.source,
    );

    return Column(children: [
      dropdowns,
      codeField,
    ]);
  }
}

class InnerField extends StatefulWidget {
  final String language;
  final String theme;
  final String? source;

  const InnerField({
    Key? key,
    required this.language,
    required this.theme,
    this.source,
  }) : super(key: key);

  @override
  _InnerFieldState createState() => _InnerFieldState();
}

class _InnerFieldState extends State<InnerField> {
  CodeController? _codeController;

  @override
  void initState() {
    super.initState();
    _codeController = CodeController(
      text: widget.source ?? CODE_SNIPPETS[widget.language],
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
      language: allLanguages[widget.language],
    );
  }

  @override
  void dispose() {
    _codeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final styles = THEMES[widget.theme];

    if (styles == null) {
      return _buildCodeField();
    }

    return CodeTheme(
      data: CodeThemeData(styles: styles),
      child: _buildCodeField(),
    );
  }

  Widget _buildCodeField() {
    return CodeField(
      controller: _codeController!,
      textStyle: const TextStyle(fontFamily: 'SourceCode'),
    );
  }
}
