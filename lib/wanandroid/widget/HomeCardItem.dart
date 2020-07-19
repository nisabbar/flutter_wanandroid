import 'package:flutter/material.dart';
import 'package:flutter_study/wanandroid/bean/ArticleResponseBean.dart';

//主页文章列表Item
class ArticleCardItem extends StatelessWidget {
  ArticleBean dataBean;

  ArticleCardItem(this.dataBean);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(left: 10, right: 10, top: 8),
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                dataBean.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                dataBean.desc == "" ? dataBean.title * 2 : dataBean.desc,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black45, fontSize: 14),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: <Widget>[
                  _createTab(dataBean.chapterName),
                  SizedBox(
                    width: 5,
                  ),
                  _createTab(dataBean.superChapterName),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '作者：${dataBean.author == "" ? "匿名" : dataBean.author}',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    dataBean.niceDate,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, '/WebViewPage',
              arguments: {'title': dataBean.title, 'url': dataBean.link});
        },
      ),
    );
  }

  Container _createTab(String type) {
    return Container(
      child: Text(
        type,
        style: TextStyle(fontSize: 10),
      ),
      padding: EdgeInsets.only(
        left: 6,
        right: 6,
      ),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.green),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
    );
  }
}
