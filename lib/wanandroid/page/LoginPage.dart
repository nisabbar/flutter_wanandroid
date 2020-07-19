import 'package:flutter/material.dart';
import 'package:flutter_study/wanandroid/model/Repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State {
  TextEditingController _userNametTextFieldController = TextEditingController();
  TextEditingController _passwordtTextFieldController = TextEditingController();
  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    initSharedPreference();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('登陆'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              maxLines: 1,
              controller: _userNametTextFieldController,
              decoration: InputDecoration(
                  labelText: '用户名', icon: Icon(Icons.phone_android)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 1,
              controller: _passwordtTextFieldController,
              decoration: InputDecoration(
                  labelText: '密码', icon: Icon(Icons.lock_outline)),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              child: Text('登陆'),
              onPressed: () {
                _login(_userNametTextFieldController.text,
                    _passwordtTextFieldController.text);
              },
            ),
          ],
        ),
      ),
    );
  }

  _login(String userName, String password) {
    login(userName, password).then((v) {
      sharedPreferences.setString("userName", v.data.nickname);
      Navigator.pop(context);
      setState(() {});
    }).catchError((error) {
      Toast.show(error.toString(), context);
    });
  }

  initSharedPreference() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
