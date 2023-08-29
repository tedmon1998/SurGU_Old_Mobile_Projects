import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late WebViewController _webViewController;
  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Курсы'),
            leading: IconButton(
              onPressed: () => _webViewController.goBack(),
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            actions: [
              IconButton(
                onPressed: () => _webViewController.reload(),
                icon: const Icon(
                  Icons.refresh,
                ),
              ),
              IconButton(
                onPressed: () => _webViewController.goForward(),
                icon: const Icon(Icons.arrow_forward_ios),
              ),
              IconButton(onPressed: () => {}, icon: const Icon(Icons.close))
            ],
          ),
          body: WebView(
            onWebViewCreated: (controller) => _webViewController = controller,
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://surgu.distant.global/catalog/materials',
          ),
        ),
      );
}
