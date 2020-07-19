import 'package:flutter/material.dart';
import 'package:flutter_study/wanandroid/page/HomePage.dart';
import 'package:flutter_study/wanandroid/page/NavigationPage.dart';
import 'package:flutter_study/wanandroid/page/ProjectPage.dart';
import 'package:flutter_study/wanandroid/page/SystemPage.dart';
import 'package:flutter_study/wanandroid/tool/Routes.dart';
import 'package:flutter_study/wanandroid/widget/HomeDrawer.dart';

void main() {
  runApp(WanAndroidApp());
}

//App组件
class WanAndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      onGenerateRoute: myGenerateRoute,
    );
  }
}

//主页面
class MainPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

//主页状态组件
class MainPageState extends State {
  //当前页面下标
  int index = 0;

  //页面集合
  List<Widget> pages = [
    HomePage(),
    ProjectPage(),
    SystemPage(),
    NavigationPage()
  ];

  //页面标题
  List<String> pageTitles = ['首页', '项目', '体系', '导航'];

  //侧滑栏Item图标
  List<IconData> bottomNaigationBarItemIcons = [
    Icons.home,
    Icons.school,
    Icons.format_indent_decrease,
    Icons.picture_in_picture_alt
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _createAppBar(),
      drawer: HomeDrawer(),
      body: IndexedStack(
        children: pages,
        index: index,
      ),
      bottomNavigationBar: _createBottomNavigationBar(),
    );
  }

  //创建AppBar
  AppBar _createAppBar() => AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(pageTitles[index]),
      );

  //创建BottomNavigationBar
  BottomNavigationBar _createBottomNavigationBar() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.index,
        items: [
          _createBottomNavigationBarItem(0),
          _createBottomNavigationBarItem(1),
          _createBottomNavigationBarItem(2),
          _createBottomNavigationBarItem(3),
        ],
        onTap: (i) {
          setState(() {
            this.index = i;
          });
        },
      );

  //创建BottomNavigationBarItem
  BottomNavigationBarItem _createBottomNavigationBarItem(int i) =>
      BottomNavigationBarItem(
          icon: Icon(bottomNaigationBarItemIcons[i]),
          title: Text(pageTitles[i]));
}
