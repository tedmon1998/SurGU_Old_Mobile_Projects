import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:study_manager/pages/main_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.green)),
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        home: const MainPage(),
      );
}
