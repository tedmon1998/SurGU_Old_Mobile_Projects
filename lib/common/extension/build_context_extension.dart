import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Future<void> changeLocale(Locale locale) => setLocale(locale);
}
