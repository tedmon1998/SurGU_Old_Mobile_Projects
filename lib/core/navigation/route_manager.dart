import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../presentation/screen/detail/detail_screen.dart';
import '../../presentation/screen/home/home_screen.dart';
import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  Route<T> _buildRoute<T>({required Widget screen}) {
    if (Platform.isAndroid) {
      return MaterialPageRoute<T>(
        settings: settings,
        builder: (_) => screen,
      );
    } else if (Platform.isIOS) {
      return CupertinoPageRoute<T>(
        settings: settings,
        builder: (_) => screen,
      );
    } else {
      throw 'Unknown platform.';
    }
  }

  final route = settings.name;
  final arguments = settings.arguments;
  switch (route) {
    case Routes.home:
      return _buildRoute<void>(screen: HomeScreen());
    case Routes.detail:
      return _buildRoute<String>(
        screen: DetailScreen(arguments as DetailScreenArguments),
      );
    default:
      throw "Route '$route' isn't defined.";
  }
}
