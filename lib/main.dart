import 'package:easy_localization/easy_localization.dart';
import 'package:event_app_mobile/auth/auth_page.dart';
import 'package:event_app_mobile/generated/codegen_loader.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ru'), Locale('zh')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ru'),
      assetLoader: const CodegenLoader(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      navigatorKey: navigatorKey,
      title: 'App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue)
            .copyWith(background: Colors.lightBlue),
      ),
      home: Scaffold(
        body: AuthPage(),
      ),
      builder: EasyLoading.init(),
    );
  }
}
