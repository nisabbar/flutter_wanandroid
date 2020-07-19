import 'package:flutter/material.dart';
import 'package:flutter_study/wanandroid/bean/ProjectTabResponseBean.dart';
import 'package:flutter_study/wanandroid/model/Repository.dart';

import 'ProjectListPage.dart';

class ProjectPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProjectPageState();
  }
}

class ProjectPageState extends State with SingleTickerProviderStateMixin {
  //Tabs数据
  List<ProjectTabBean> tabs = [];

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _getProjectTab();
  }

  @override
  Widget build(BuildContext context) {
    return tabs.length > 0
        ? Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 2),
                color: Theme.of(context).accentColor,
                child: TabBar(
                  isScrollable: true,
                  tabs: _creatTabs(),
                  controller: _controller,
                  indicatorColor: Theme.of(context).primaryColorLight,
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _controller,
                  children: tabs.map((v) {
                    return ProjectListPage(v.id.toString());
                  }).toList(),
                ),
              )
            ],
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }

  //获取项目类型数据
  _getProjectTab() {
    getProjectTabData().then((v) {
      setState(() {
        tabs = v.data;
        _controller = TabController(
          vsync: this,
          length: tabs.length,
        );
      });
    });
  }

  //创建Tabs控件集合
  _creatTabs() {
    return tabs.map((v) {
      return Text(
        v.name,
      );
    }).toList();
  }
}
