import 'package:flutter/material.dart';
import 'package:flutter_study/wanandroid/bean/ArticleResponseBean.dart';
import 'package:flutter_study/wanandroid/model/Repository.dart';
import 'package:flutter_study/wanandroid/widget/CustomSmartRefresherFoot.dart';
import 'package:flutter_study/wanandroid/widget/HomeCardItem.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:toast/toast.dart';

class SystemListPage extends StatefulWidget {
  String id;
  String title;

  SystemListPage({this.id, this.title});

  @override
  SystemListPageState createState() {
    return SystemListPageState();
  }
}

class SystemListPageState extends State<SystemListPage> {
  int _offset = 0;

  //文章数据
  List<ArticleBean> _data = [];

  RefreshController _refreshController =
      RefreshController(initialRefresh: true);

  @override
  void initState() {
    super.initState();
    _getListData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SmartRefresher(
        footer: CustomSmartRefresherFoot(),
        enablePullUp: true,
        controller: _refreshController,
        onRefresh: () {
          _offset = 0;
          _getListData();
        },
        onLoading: () {
          _getListData();
        },
        child: ListView.builder(
          itemCount: _data.length,
          itemBuilder: (context, index) {
            return ArticleCardItem(_data[index]);
          },
        ),
      ),
    );
  }

  _getListData() {
    getSystemArticleData(_offset, widget.id).then((v) {
      setState(() {
        if (_offset == 0) {
          _data = v.data.datas;
          _refreshController.refreshCompleted();
        } else {
          if (v.data.datas.length > 0) {
            _data.addAll(v.data.datas);
            _refreshController.loadComplete();
          } else {
            _refreshController.loadNoData();
          }
        }
        _offset++;
      });
    }).catchError((error) {
      _offset == 0
          ? _refreshController.refreshCompleted()
          : _refreshController.loadFailed();
      Toast.show(error.toString(), context);
    });
  }
}
