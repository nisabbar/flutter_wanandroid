import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  var arg;

  SearchPage({this.arg = 'default'});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(arg),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个'),
                ),
                ListTile(
                  title: Text('第一个'),
                ),
                ListTile(
                  title: Text('第一个'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第2个'),
                ),
                ListTile(
                  title: Text('第2个'),
                ),
                ListTile(
                  title: Text('第2个'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个'),
                ),
                ListTile(
                  title: Text('第一个'),
                ),
                ListTile(
                  title: Text('第一个'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第2个'),
                ),
                ListTile(
                  title: Text('第2个'),
                ),
                ListTile(
                  title: Text('第2个'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个'),
                ),
                ListTile(
                  title: Text('第一个'),
                ),
                ListTile(
                  title: Text('第一个'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第2个'),
                ),
                ListTile(
                  title: Text('第2个'),
                ),
                ListTile(
                  title: Text('第2个'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个'),
                ),
                ListTile(
                  title: Text('第一个'),
                ),
                ListTile(
                  title: Text('第一个'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第2个'),
                ),
                ListTile(
                  title: Text('第2个'),
                ),
                ListTile(
                  title: Text('第2个'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个'),
                ),
                ListTile(
                  title: Text('第一个'),
                ),
                ListTile(
                  title: Text('第一个'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第2个'),
                ),
                ListTile(
                  title: Text('第2个'),
                ),
                ListTile(
                  title: Text('第2个'),
                ),
              ],
            ),
          ],
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: "aa",
              ),
              Tab(
                text: "dsaf",
              ),
              Tab(
                text: "aa",
              ),
              Tab(
                text: "dsaf",
              ),
              Tab(
                text: "aa",
              ),
              Tab(
                text: "dsaf",
              ),
              Tab(
                text: "aa",
              ),
              Tab(
                text: "dsaf",
              ),
              Tab(
                text: "aa",
              ),
              Tab(
                text: "dsaf",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
