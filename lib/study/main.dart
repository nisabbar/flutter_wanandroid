import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_study/study/Routes.dart';
import 'package:flutter_study/study/mainDemo.dart';
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
      debugShowCheckedModeBanner: false,
//      home: MyScaffold(),
      initialRoute: '/main',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      onGenerateRoute: onGenerateRoute,
    );
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('DrawerHead'),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(getImage('1')),
                ),
              ),
            ),
            UserAccountsDrawerHeader(
              accountEmail: Text("dsaf"),
              arrowColor: Colors.indigo,
              accountName: Text('asdfasdf'),
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                  fit: BoxFit.cover,
//                  image: NetworkImage(
//                    getImage("1"),
//                  ),
//                ),
//              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(getImage("3")),
              ),
              otherAccountsPictures: <Widget>[
                Image.network(getImage('1')),
                Image.network(getImage('4')),
                Image.network(getImage('5')),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('home'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('home'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(),
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
            if (i != 1) {
              this.index = i;
            }
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
      floatingActionButton: Container(
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              this.index = 1;
            });
          },
          backgroundColor: this.index == 1 ? Colors.indigo : Colors.grey,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        height: 60,
        width: 60,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
