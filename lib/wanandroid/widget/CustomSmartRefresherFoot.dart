import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CustomSmartRefresherFoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomFooter(
      builder: (BuildContext context, LoadStatus mode) {
        Widget body;
        if (mode == LoadStatus.idle) {
          body = Text("上拉加载更多");
        } else if (mode == LoadStatus.loading) {
          body = _createLoadingFoot();
        } else if (mode == LoadStatus.failed) {
          body = Text("加载失败，请点击重试");
        } else if (mode == LoadStatus.canLoading) {
          body = Text("松手加载更多");
        } else {
          body = Text("没数据咯");
        }
        return Container(
          height: 55.0,
          child: Center(child: body),
        );
      },
    );
  }

  //创建加载更多控件
  _createLoadingFoot() {
    return Container(
        height: 55.0,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              '加载中...',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ));
  }
}
