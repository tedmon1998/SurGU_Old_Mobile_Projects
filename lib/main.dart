import 'package:flutter/material.dart';
import 'package:SurguDistant/pages/home_page.dart';

void main() => runApp(MyApp());

final navigatorKey = GlobalKey<NavigatorState>();

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[800],
            elevation: 10,
          ),
        ),
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      );
}
