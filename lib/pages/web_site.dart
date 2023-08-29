import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWedget extends StatefulWidget {
  const WebViewWedget({Key? key}) : super(key: key);

  @override
  State<WebViewWedget> createState() => _WebViewWedgetState();
}

class _WebViewWedgetState extends State<WebViewWedget> {
  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () => _webViewController.reload(),
              icon: const Icon(Icons.refresh),
            ),
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close),
            )
          ],
          leading: IconButton(
              onPressed: () => _webViewController.goBack(),
              icon: const Icon(Icons.arrow_back_ios_new)),
        ),
        body: WebView(
          onWebViewCreated: (controller) => _webViewController = controller,
          initialUrl: 'https://surgu.distant.global/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      );
}
