// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> en = {
    "app_title": "Event Aplication",
    "app_bar_title": "Data Market Event App",
    "main": "Main",
    "adgenda": "Adgenda",
    "interview": "Interview",
    "profile": "Profile",
    "contacts": "Contacts"
  };
  static const Map<String, dynamic> ru = {
    "app_bar_title": "Мероприятия Дата Маркет",
    "main": "Главная",
    "adgenda": "Адженда",
    "interview": "Опрос",
    "profile": "Профиль",
    "contacts": "Контакты"
  };
  static const Map<String, dynamic> zh = {
    "app_bar_title": "數據市場",
    "main": "家",
    "adgenda": "議程",
    "interview": "面試",
    "profile": "輪廓",
    "contacts": "聯繫人"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "en": en,
    "ru": ru,
    "zh": zh
  };
}
