import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class WebViewPage extends StatefulWidget {
  String url;
  String title;

  WebViewPage({this.url = "", this.title = ""});

  @override
  WebViewPageState createState() {
    return WebViewPageState();
  }
}

class WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: WebViewX(
        initialContent: widget.url,
      ),
    );