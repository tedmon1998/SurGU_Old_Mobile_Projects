import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

const translationsPath = 'assets/translations';

const russianLanguageCode = 'ru';

const supportedLocales = [Locale(russianLanguageCode)];

const fallbackLocale = Locale(russianLanguageCode);

class Strings {
  Strings._();

  static String get projectDescription => 'projectDescription'.tr();
}
