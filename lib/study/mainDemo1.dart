import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_study/study/page/CategoryPage.dart';
import 'package:flutter_study/study/page/HomePage.dart';
import 'package:flutter_study/study/page/SettingsPage.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffold(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyContainer1();
  }
}

//Scaffold
class MyScaffold extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyScaffoldState();
  }
}

class MyScaffoldState extends State {
  var index = 0;
  List<StatelessWidget> list = [HomePage(), CategoryPage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'flutter demo',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: list[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            this.index = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text("home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("category"),
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            title: Text("settings"),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}

//container
class MyContainer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'asdfasdfsadfsafsafsafsafsadfsadf',
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 19,
        ),
      ),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(
          color: Colors.red,
          width: 10,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
//      transform: Matrix4.rotationZ(0.1),
      alignment: Alignment.bottomCenter,
    );
  }
}
