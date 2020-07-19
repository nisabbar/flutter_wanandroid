import 'package:flutter/material.dart';
import 'package:flutter_study/study/main.dart';
import 'package:flutter_study/study/page/ButtonPage.dart';
import 'package:flutter_study/study/page/FormPage.dart';
import 'package:flutter_study/study/page/SearchPage.dart';
import 'package:flutter_study/study/page/TabBarPage.dart';
import 'package:flutter_study/study/page/TextFieldDemoPage.dart';

var routes = {
  '/search': (context, {arguments}) =>
      arguments == null ? SearchPage() : SearchPage(arg: arguments),
  '/form': (context, {arguments}) =>
      arguments == null ? FormPage() : FormPage(args: arguments),
  '/main': (context) => MyScaffold(),
  '/tabBar': (context) => TabBarPage(),
  '/button': (context) => ButtonPage(),
  '/textField': (context) => TextFieldPage(),
};

// ignore: top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
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
                arguments: settings.arguments,
              ));
    } else {
      route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    }
  }
  return route;
};
