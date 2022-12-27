import 'package:flutter/material.dart';

class LanguageManager {
  LanguageManager._init();
  static LanguageManager? _instance;
  static LanguageManager get instance {
    _instance ??= LanguageManager._init();
    return _instance!;
  }

  final ruLocale = const Locale('ru');
  final kyLocale = const Locale('ky');

  List<Locale> get supportedLocales => [ruLocale, kyLocale];
}
