import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:womanup_mobile/pages/home_page.dart';

main() {
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 222, 195, 130),
            elevation: 10,
          ),
        ),
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
=======
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/": (_) => Scaffold(
            appBar: AppBar(
              title: const Text("WomanUp")
            ),
            body: Column(
              children: [
                Expanded(
                  child: WebView(
                    initialUrl: "https://womanup.online",
                    javascriptMode: JavascriptMode.unrestricted,
                  ),
                ),
              ],
            ),
          )
    },
  ));
>>>>>>> 85d278ff695576c06fa68e4cdd49c7076791af16
}
