import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  var args;

  FormPage({this.args = 'ppp'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(args),
      ),
      body: RaisedButton(
        child: Text("adsfa"),
        onPressed: () {
          Navigator.pushNamed(context, "/search");
        },
      ),
    );
  }
}
