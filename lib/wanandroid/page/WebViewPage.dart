import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPage extends StatefulWidget {
  String url;
  String title;

  WebViewPage({this.url="", this.title=""});

  @override
  WebViewPageState createState() {
    return WebViewPageState();
  }
}

class WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      url: widget.url,
      withZoom: true,
      hidden: true,
    );
  }
}
