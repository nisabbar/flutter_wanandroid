import 'package:flutter/material.dart';
import 'package:flutter_study/study/page/ButtonPage.dart';
import 'package:flutter_study/wanandroid/page/LoginPage.dart';
import 'package:flutter_study/wanandroid/page/SystemListPage.dart';
import 'package:flutter_study/wanandroid/page/WebViewPage.dart';

var routes = {
  '/LoginPage': (context) => LoginPage(),
  '/WebViewPage': (context, arguments) => WebViewPage(
        title: arguments['title'],
        url: arguments['url'],
      ),
  '/SystemListPage': (context, arguments) => SystemListPage(
        id: arguments['id'],
        title: arguments['title'],
      ),
  '/button': (context) => ButtonPage(),
};

// ignore: top_level_function_literal_block
var myGenerateRoute = (RouteSettings settings) {
  Route route;
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  //如果有该路由
  if (pageContentBuilder != null) {
    //如果有该路由有参数
    if (settings.arguments != null) {
      route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(
                context,
                settings.arguments,
              ));
    } else {
      route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    }
  }
  return route;
};
