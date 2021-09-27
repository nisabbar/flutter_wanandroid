import 'package:flutter/material.dart';
import 'package:flutter_study/wanandroid/bean/SystemResponseBean.dart';
import 'package:flutter_study/wanandroid/model/Repository.dart';
import 'package:flutter_study/wanandroid/widget/SystemPageItem.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class SystemPage extends StatefulWidget {
  @override
  SystemPageState createState() {
    return SystemPageState();
  }
}

class SystemPageState extends State<SystemPage> {
  List<SystemListBean> data = [];

  RefreshController _refreshController =
      RefreshController(initialRefresh: true);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      onRefresh: () {
        _getSystemListData();
      },
      controller: _refreshController,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return SystemPageItem(data[index]);
        },
      ),
    );
  }

  ///获取数据
  _getSystemListData() {
    getSystemData().then((v) {
      setState(() {
        data = v.data;
        _refreshController.refreshCompleted();
      });
    });
  }
}
