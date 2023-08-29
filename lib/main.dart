import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'common/resource/strings.dart';
import 'common/resource/theme.dart';
import 'core/di/dependency_provider.dart';
import 'core/navigation/route_manager.dart';
import 'core/navigation/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setupDI(isDebug: kDebugMode);
  runApp(
    EasyLocalization(
      supportedLocales: supportedLocales,
      path: translationsPath,
      fallbackLocale: fallbackLocale,
      child: Application(),
    ),
  );
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: buildTheme(),
      initialRoute: Routes.home,
      onGenerateRoute: generateRoute,
    );
  }
}
