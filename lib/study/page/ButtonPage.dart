import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('普通按钮'),
            elevation: 100,
            color: Colors.red,
            animationDuration: Duration(seconds: 10),
            onPressed: () {},
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  child: Text('普通按钮'),
                  elevation: 100,
                  color: Colors.red,
                  animationDuration: Duration(seconds: 10),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          RaisedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('dd'),
          ),
          RaisedButton(
            child: Text("dsfsd"),
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            child: RaisedButton(
              splashColor: Colors.blue,
              child: Text('dd'),
              onPressed: () {},
              shape: CircleBorder(side: BorderSide(color: Colors.white12)),
            ),
            height: 100,
            width: 100,
          ),
          FlatButton(
            child: Text('FlatButton'),
            onPressed: () {},
            color: Colors.lightBlue,
            textColor: Colors.white,
          ),
          OutlineButton(
            onPressed: () {},
            child: Text('OutlinButton'),
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.red,
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              OutlineButton(
                onPressed: () {},
                child: Text('登陆'),
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('注册'),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Colors.indigo,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
