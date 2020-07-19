import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('CategoryPage Go'),
          onPressed: () {
            Navigator.pushNamed(context, '/form',arguments: 'kkk');
          },
        ),
      ],
    );
  }
}
