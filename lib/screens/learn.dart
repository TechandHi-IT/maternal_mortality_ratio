import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:maternal_mortality_ratio/screens/web_view.dart';

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  // MyChromeSafariBrowser browser = MyChromeSafariBrowser();
  MyInAppBrowser browser = MyInAppBrowser();

  var settings = InAppBrowserClassSettings(
    browserSettings: InAppBrowserSettings(
      hideUrlBar: true,
    ),
    webViewSettings: InAppWebViewSettings(javaScriptEnabled: true),
  );

  // @override
  // void initState() {
  //   super.initState();
  
  // }

  @override
  Widget build(BuildContext context) {
    return Center(child: TextButton.icon(onPressed: () {
        browser.openUrlRequest(
      urlRequest: URLRequest(url: WebUri("https://chat.openai.com/")),
      settings: settings,
    );
    }, icon: const Icon(Icons.add), label: const Text("Open Chat GPT"),),);
  }
}
