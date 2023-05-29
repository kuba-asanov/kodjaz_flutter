import 'package:flutter/material.dart';
import 'package:code_text_field/code_text_field.dart';

import '../../../../core/helpers/screen_util.dart';
import 'code_snippets.dart';
import 'themes.dart';

class CustomCodeBox extends StatelessWidget {
  final String language;
  final String theme;
  final bool readOnly;
  final CodeController codeController;

  const CustomCodeBox({
    Key? key,
    this.readOnly = false,
    required this.language,
    required this.theme,
    required this.codeController,
  }) : super(key: key);

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
    MyScreenUtil.init(context);

    // final codeDropdown =
    //     buildDropdown(languageList, language!, Icons.code, (val) {
    //   if (val == null) return;
    //   setState(() => language = val);
    // });
    // final themeDropdown =
    //     buildDropdown(themeList, theme!, Icons.color_lens, (val) {
    //   if (val == null) return;
    //   setState(() => theme = val);
    // });
    // final dropdowns = Row(children: [
    //   // const SizedBox(width: 12.0),
    //   // codeDropdown,
    //   const SizedBox(width: 12.0),
    //   themeDropdown,
    // ]);

    final codeField = InnerField(
      key: ValueKey("$language - $theme"),
      language: language,
      theme: theme,
      codeController: codeController,
      readOnly: readOnly,
    );

    return Column(children: [
      // widget.withoutDrDwn ? const SizedBox() : dropdowns,
      codeField,
    ]);
  }
}

class InnerField extends StatelessWidget {
  final String language;
  final String theme;
  final CodeController codeController;
  final bool readOnly;

  const InnerField({
    Key? key,
    required this.language,
    required this.theme,
    required this.codeController,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    final styles = THEMES[theme];

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
      controller: codeController,
      readOnly: readOnly,
      textStyle: const TextStyle(fontFamily: 'SourceCode'),
    );
  }
}
