import 'package:flutter/material.dart';
import 'package:flutter_study/wanandroid/bean/NavigationResponseBean.dart';
import 'package:flutter_study/wanandroid/model/Repository.dart';

class NavigationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationPageState();
  }
}

class NavigationPageState extends State {
  List<NavigationTypeBean> typeData = [];
  List<NavigationArticleBean> articleData = [];
  int selectIndex = 0;

  @override
  void initState() {
    super.initState();
    _getHttpData();
  }

  @override
  Widget build(BuildContext context) {
    return typeData.length > 0
        ? Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectIndex = index;
                        });
                      },
                      child: Container(
                        color: index == selectIndex
                            ? Color(0xFFFFFF)
                            : Colors.white,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 20),
                        child: Text(typeData[index].name),
                      ),
                    );
                  },
                  itemCount: typeData.length,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: GridView.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: typeData[selectIndex].articles.map((v) {
                      return Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/WebViewPage',
                                arguments: {
                                  'title': v.title,
                                  'url': v.link,
                                });
                            print(v.link);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(v.title),
                          ),
                        ),
                        color: Colors.white,
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }

  //获取数据
  _getHttpData() {
    getNavigationPageData().then((v) {
      setState(() {
        typeData = v.data;
      });
    });
  }
}
