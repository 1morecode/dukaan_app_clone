import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
        Navigator.of(context).pop();
      },),
        title: Text('Privacy Policy'),
      ),
      body: WebView(
        initialUrl: 'https://mydukaan.io/privacy',
      ),
    );
  }
}
