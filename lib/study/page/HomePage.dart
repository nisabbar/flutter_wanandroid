import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class HomePage extends StatelessWidget {
  showDataP(BuildContext context) async {
    var showDatePicker2 = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(3000));
    Toast.show(showDatePicker2.toIso8601String(), context, duration: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('f'),
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
        ),
        RaisedButton(
          child: Text('BBB'),
          onPressed: () {
            Navigator.pushNamed(context, '/tabBar');
          },
        ),
        RaisedButton(
          child: Text('表单1'),
          onPressed: () {
            Navigator.pushNamed(context, '/textField');
          },
        ),
        RaisedButton(
          child: Text('表单2'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    elevation: 10,
                    title: Text("adfsad"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('adfd'),
                      ),
                      FlatButton(
                        child: Text('adfd'),
                      ),
                    ],
                  );
                });
          },
        ),
        RaisedButton(
          child: Text('date'),
          onPressed: () {
            showDataP(context);
          },
        ),
        RaisedButton(
          child: Text('MyDialog'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return MyDialog();
                });
          },
        ),
      ],
    );
  }
}

class MyDialog extends Dialog {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
