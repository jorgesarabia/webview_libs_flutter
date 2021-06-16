import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewFlutterPage extends StatefulWidget {
  const WebViewFlutterPage({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  _WebViewFlutterPageState createState() => _WebViewFlutterPageState();
}

class _WebViewFlutterPageState extends State<WebViewFlutterPage> {
  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('webview_flutter'),
        ),
        body: WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
          gestureNavigationEnabled: true,
        ),
      ),
    );
  }
}
