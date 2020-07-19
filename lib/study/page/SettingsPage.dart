import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Button'),
          onPressed: (){
            Navigator.pushNamed(context, '/button');
          },
        ),
      ],
    );
  }
}