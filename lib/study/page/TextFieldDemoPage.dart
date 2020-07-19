
import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TextFieldPageState();
}

class TextFieldPageState extends State {
  var _textController = TextEditingController();
  var _flag = false;

  @override
  void initState() {
    super.initState();
    _textController.text = "wwwwwww";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('textField'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: _textController,
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'sadfasdf',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {},
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '密码',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: '用户名',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.satellite),
                labelText: '用户名',
                border: OutlineInputBorder(),
              ),
            ),
            RaisedButton(
              child: Text(_textController.text),
              onPressed: () {
                setState(() {});
              },
            ),
            CheckboxListTile(
              title: Text('adfs'),
              value: _flag,
              onChanged: (v) {
                setState(() {
                  _flag = v;
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}
