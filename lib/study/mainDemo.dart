import 'dart:ui';

import 'package:flutter/material.dart';

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
      body: HomeContent(),
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
      transform: Matrix4.rotationZ(0.1),
      alignment: Alignment.bottomCenter,
    );
  }
}

//center、container
class MyContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(
            100,
          ),
          image: DecorationImage(
            image: NetworkImage(
              "https://cdn2.jianshu.io/assets/default_avatar/2-9636b13945b9ccf345bc98d0d81074eb.jpg",
            ),
          ),
        ),
//        child: Image.network(
//          "https://upload.jianshu.io/users/upload_avatars/2631077/dc99c361412c?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp",
//        ),
      ),
    );
  }
}

//center、container、decoration、image
class MyContainer3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(color: Colors.red),
        child: Image.asset('images/a1.jpg'),
      ),
    );
  }
}

//listView、ListTile
class MyContainer4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          selected: true,
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
          trailing: Icon(Icons.access_alarm),
        ),
        ListTile(
          dense: true,
          trailing: Icon(Icons.access_alarm),
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          trailing: Image.network(
              "https://upload.jianshu.io/users/upload_avatars/4263857/34d7b217-7338-48fe-81a1-98367fecdbee.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp"),
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          title: Text(
            "asdfasdf",
            textAlign: TextAlign.center,
          ),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
        ListTile(
          title: Text("asdfasdf"),
          subtitle: Text("adsfsadfsdfsdf"),
        ),
      ],
    );
  }
}

//ListView
class MyContainer5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      height: 200,
      child: ListView(
        children: getData(),
//        children: <Widget>[
//          Container(
//            color: Colors.red,
//            height: 100,
//            width: 100,
//            child: ListView(
//              children: <Widget>[
//                ListTile(
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//                ListTile(
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//                ListTile(
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//                ListTile(
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//                ListTile(
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//                ListTile(
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//                ListTile(
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//                ListTile(
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//                ListTile(
//                  title: Text("sdafsadf"),
//                  subtitle: Text("sdafsadf"),
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//                ListTile(
//                  title: Text("sdafsadf"),
//                  subtitle: Text("sdafsadf"),
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//                ListTile(
//                  title: Text("sdafsadf"),
//                  subtitle: Text("sdafsadf"),
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//                ListTile(
//                  title: Text("sdafsadf"),
//                  subtitle: Text("sdafsadf"),
//                  leading: Icon(Icons.import_contacts),
//                  trailing: Icon(Icons.access_alarm),
//                ),
//              ],
//            ),
//          ),
//          Container(
//            color: Colors.black,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.red,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.lightBlue,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.amber,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.red,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.black,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.red,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.lightBlue,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.amber,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.red,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.black,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.red,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.lightBlue,
//            height: 100,
//            width: 100,
//          ),
//          Container(
//            color: Colors.amber,
//            height: 100,
//            width: 100,
//          ),
//        ],
      ),
    );
  }
}

//ListView.Builder
class MyContainer6 extends StatelessWidget {
  List list = List();

  MyContainer6() {
    for (var i = 0; i < 100; i++) {
      list.add('a$i');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TextImage();
      },
      itemCount: list.length,
    );
  }
}

//GirdView.count
class MyContainer7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      children: getData(),
      crossAxisCount: 3,
      crossAxisSpacing: 20,
      padding: EdgeInsets.all(20),
      mainAxisSpacing: 20,
      childAspectRatio: 1,
    );
  }
}

//GridView.builder
class MyContainer8 extends StatelessWidget {
  var list = List();

  MyContainer8() {
    for (var i = 0; i < 100; i++) {
      list.add(Column(
        children: <Widget>[
          Image.network(
              "https://upload.jianshu.io/users/upload_avatars/2400087/ae7dc76c-b428-48f0-b159-9dffa59e7daa.jpeg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp"),
          Text("adsfadf"),
        ],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) {
        return list[index];
      },
      itemCount: list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      padding: EdgeInsets.all(10),
    );
  }
}

//GridView.count
class MyContainer9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      childAspectRatio: 2,
      children: <Widget>[
        Image.network(
          getImage("2"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("3"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("1"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("2"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("3"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("5"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("4"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("3"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("1"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("2"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("3"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("1"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("2"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("3"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("5"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("4"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("3"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("1"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("2"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("3"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("1"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("2"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("3"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("5"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("4"),
          fit: BoxFit.cover,
        ),
        Image.network(
          getImage("3"),
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

//Row
class MyContainer10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          MyWidget(
            Icons.add,
            color: Colors.red,
            size: 44,
          ),
          MyWidget(
            Icons.edit,
            color: Colors.blue,
            size: 44,
          ),
          MyWidget(
            Icons.verified_user,
            color: Colors.green,
            size: 44,
          ),
        ],
      ),
    );
  }
}

//Row、Expanded
class MyContainer11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        MyWidget(
          Icons.edit,
          color: Colors.orange,
        ),
        Expanded(
          flex: 2,
          child: MyWidget(
            Icons.verified_user,
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 2,
          child: MyWidget(Icons.verified_user),
        ),
      ],
    );
  }
}

//Padding
class MyContainer12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            height: 90,
          ),
          Container(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MyWidget(Icons.satellite),
                flex: 1,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: 50,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.orange,
                        ),
                      ),
                      Container(
                        height: 10,
                        color: Colors.white,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.indigoAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
      padding: EdgeInsets.all(10),
    );
  }
}

//Stack、Postioned、Align
class MyContainer13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 444,
      width: 333,
      child: Stack(
//        alignment: Alignment(0, 1),
        children: <Widget>[
          Positioned(
            left: 100,
            child: MyWidget(
              Icons.web,
              color: Colors.black,
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: MyWidget(Icons.web),
          ),
          Align(
            alignment: Alignment(1, 1),
            child: MyWidget(Icons.web),
          ),
          Align(
            alignment: Alignment(-1, -1),
            child: MyWidget(Icons.web),
          ),
        ],
      ),
    );
  }
}

//AspectRatio
class MyContainer14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

//Card
class MyContainer15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                subtitle: Text('搞基工程师'),
              ),
              ListTile(
                title: Text(
                  "电话：xxxx",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxxx",
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                subtitle: Text('搞基工程师'),
              ),
              ListTile(
                title: Text(
                  "电话：xxxx",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxxx",
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                subtitle: Text('搞基工程师'),
              ),
              ListTile(
                title: Text(
                  "电话：xxxx",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxxx",
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                subtitle: Text('搞基工程师'),
              ),
              ListTile(
                title: Text(
                  "电话：xxxx",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxxx",
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                subtitle: Text('搞基工程师'),
              ),
              ListTile(
                title: Text(
                  "电话：xxxx",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxxx",
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                subtitle: Text('搞基工程师'),
              ),
              ListTile(
                title: Text(
                  "电话：xxxx",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：xxxx",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//Card、ClipOval、CircleAvatar
class MyContainer16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  getImage("3"),
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    getImage("1"),
                  ),
                ),
                subtitle: Text(
                    'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                    overflow: TextOverflow.ellipsis),
                title: Text('xxxxxx'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  getImage("3"),
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    getImage("1"),
                    width: 44,
                    fit: BoxFit.cover,
                    height: 44,
                  ),
                ),
                subtitle: Text('adfasdf'),
                title: Text('xxxxxx'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  getImage("3"),
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    getImage("1"),
                    width: 44,
                    fit: BoxFit.cover,
                    height: 44,
                  ),
                ),
                subtitle: Text('adfasdf'),
                title: Text('xxxxxx'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  getImage("3"),
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    getImage("1"),
                    width: 44,
                    fit: BoxFit.cover,
                    height: 44,
                  ),
                ),
                subtitle: Text('adfasdf'),
                title: Text('xxxxxx'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  getImage("3"),
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    getImage("1"),
                    width: 44,
                    fit: BoxFit.cover,
                    height: 44,
                  ),
                ),
                subtitle: Text('adfasdf'),
                title: Text('xxxxxx'),
              )
            ],
          ),
        ),
      ],
    );
  }
}

//RaisedButton
class MyContainer17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        alignment: WrapAlignment.start,
        runSpacing: 20,
        children: <Widget>[
          MyButton('ADFASDF'),
          MyButton('adf'),
          MyButton('a'),
          MyButton('adf'),
          MyButton('ADFAadSDF'),
          MyButton('ADFASDF'),
          MyButton('adf'),
          MyButton('a'),
          MyButton('a'),
        ],
      ),
    );
  }
}

//StatefulWidget
class MyContainer18 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyState1();
}

class MyContainer19 extends StatefulWidget {
  @override
  State createState() => MyState2();
}

class MyState2 extends State {
  List<String> data = List();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: data.map((value) {
            return ListTile(
              title: Text(value),
              subtitle: Text('dfsf'),
            );
          }).toList(),
        ),
        RaisedButton(
          child: Text('+++'),
          onPressed: () {
            setState(() {
              data.add(DateTime.now().toIso8601String());
            });
          },
        ),
      ],
    );
  }
}

class MyState1 extends State {
  var i = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('${i}fasfds'),
        RaisedButton(
          child: Text('++'),
          onPressed: () {
            setState(() {
              i++;
            });
          },
        ),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  String text;

  MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}

class MyWidget extends StatelessWidget {
  double size;

  Color color;
  IconData iconData;

  MyWidget(this.iconData, {this.size = 50, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      color: color,
      child: Center(
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}

class TextImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.grey,
      height: 100,
      padding: EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.network(
            getImage("3"),
            fit: BoxFit.fitWidth,
            width: double.infinity,
            height: double.infinity,
          ),
          Align(
            child: Text(
              "asdfasdf",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}

//自定义方法
List<Widget> getData() {
  var list = List<Widget>();
  for (var i = 0; i < 100; i++) {
    list.add(
      Container(
        child: Column(
          children: <Widget>[
            Image.network(
                "https://upload.jianshu.io/users/upload_avatars/2400087/ae7dc76c-b428-48f0-b159-9dffa59e7daa.jpeg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp"),
            Text("adsfadf"),
          ],
        ),
        decoration: BoxDecoration(
//          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 1, color: Colors.grey),
        ),
      ),
    );
  }
  return list;
}

String getImage(String string) {
  return "https://www.itying.com/images/flutter/$string.png";
}

//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home study.page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also a layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}
