// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


// ignore: camel_case_types
class webView extends StatefulWidget {

  // const webView({ Key? key }) : super(key: key);

  @override
  State<webView> createState() => _webViewState();
}

class _webViewState extends State<webView> {
  @override
  Widget build(BuildContext context) {
    // late WebViewController controller;
    _launchURL() async {
      const url = 'https://discord.com/login';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black
        ),
        body: WebView(
          initialUrl: 'https://discord.com/login',
          javascriptMode: JavascriptMode.unrestricted,
          
          ),
        );
  }
}
