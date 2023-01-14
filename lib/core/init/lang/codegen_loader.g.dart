// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "registration": "Регистрация",
  "enter_phone_number": "Введите\nномер телефона",
  "phone_number": "Номер телефона",
  "login": "Войти",
  "youHaveNotChosenACourseYet": "Вы еще не выбрали курс",
  "viewOurCatalog": "Просмотрите наш каталог",
  "chooseACourse": "Выбрать курс",
  "recommendationsForYou": "Рекомендации для вас",
  "hardLevel": "Сложный",
  "mediumLevel": "Средний",
  "easyLevel": "Легкий",
  "myCourses": "Мои курсы",
  "lesson": "Урок",
  "continueTheCourse": "Продолжить курс",
  "modules": "Модули",
  "aboutTheCourse": "О курсе"
};
static const Map<String,dynamic> ky = {
  "registration": "Катталуу",
  "enter_phone_number": "Телефон номериңизди киргизиңиз",
  "phone_number": "Телефон номериңиз",
  "login": "Кирүү",
  "youHaveNotChosenACourseYet": "Сиз курс тандай элексиз",
  "viewOurCatalog": "Биздин каталогду карап чыгыңыз",
  "chooseACourse": "Курс тандоо",
  "recommendationsForYou": "Сизге сунуш",
  "hardLevel": "Кыйын",
  "mediumLevel": "Орто",
  "easyLevel": "Оңой",
  "myCourses": "Менин курстарым"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru, "ky": ky};
}
