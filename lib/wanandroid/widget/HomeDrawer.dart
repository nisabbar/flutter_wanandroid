import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/wanandroid/const/Api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeDrawerState();
  }
}

class HomeDrawerState extends State {
  //侧滑栏Item图标
  List<IconData> drawItemIcons = [
    Icons.collections,
    Icons.image,
    Icons.android,
    Icons.power_settings_new
  ];

  //侧滑栏Item标题
  List<String> drawItemTitles = ['收藏', '趣图', '玩安卓', '注销'];

  //侧滑栏头像链接
  String drawerHeadUrl =
      'https://cdn2.jianshu.io/assets/default_avatar/10-e691107df16746d4a9f3fe9496fd1848.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240';

  //侧滑栏用户名
  String drawerAccountName = '';

  bool isLogin = false;
  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    initSharedpreference();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(drawerAccountName),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(drawerHeadUrl),
            ),
            otherAccountsPictures: <Widget>[
              InkWell(
                child: isLogin
                    ? Container()
                    : Text(
                        '登陆',
                        style: TextStyle(color: Colors.white),
                      ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/LoginPage');
                },
              ),
            ],
          ),
          InkWell(
            child: _createListTile(2),
            onTap: () {
              Navigator.pushNamed(context, '/WebViewPage', arguments: {
                "title": '玩安卓',
                "url": Api.BASE_URL,
              });
            },
          ),
          InkWell(
            child: isLogin ? _createListTile(3) : Container(),
            onTap: () {
              setState(() {
                sharedPreferences.remove("userName");
                drawerAccountName = "";
                isLogin = false;
              });
            },
          ),
        ],
      ),
    );
  }

  //创建ListTile
  ListTile _createListTile(int i) => ListTile(
        title: Text(drawItemTitles[i]),
        leading: Icon(drawItemIcons[i]),
      );

  initSharedpreference() async {
    sharedPreferences = await SharedPreferences.getInstance();
    drawerAccountName = sharedPreferences.getString("userName") ?? "";
    isLogin = drawerAccountName.isNotEmpty;
    setState(() {});
  }
}
