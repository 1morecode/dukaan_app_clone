import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HowToUseDukaanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How to use Dukaan App'),centerTitle: true,
      ),
      body: WebView(
        initialUrl: 'https://www.youtube.com/playlist?reload=9&list=PLs_gKdv4olrZECsyNrKUjuALeqiec4snN',
      ),
    );
  }
}
