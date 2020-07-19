import 'package:flutter/material.dart';

go(BuildContext context, Widget widget) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) {
      return widget;
    }),
  );
}
