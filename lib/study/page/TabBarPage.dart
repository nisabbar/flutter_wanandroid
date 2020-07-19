import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TabBarPageState();
}

class TabBarPageState extends State with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      vsync: this,
      length: 2,
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: TabBar(
            controller: _controller,
            tabs: <Widget>[Tab(text: 'adf'), Tab(text: 'adf')],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: <Widget>[
            Text('adf'),
            Text('adf'),
          ],
        ),
      );
}
