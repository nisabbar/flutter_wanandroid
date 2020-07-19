import 'dart:async';
import 'dart:convert';

import 'package:flutter_study/wanandroid/bean/ArticleResponseBean.dart';
import 'package:flutter_study/wanandroid/bean/BannerResponseBean.dart';
import 'package:flutter_study/wanandroid/bean/LoginResponseBean.dart';
import 'package:flutter_study/wanandroid/bean/NavigationResponseBean.dart';
import 'package:flutter_study/wanandroid/bean/ProjectResponseBean.dart';
import 'package:flutter_study/wanandroid/bean/ProjectTabResponseBean.dart';
import 'package:flutter_study/wanandroid/bean/SystemResponseBean.dart';
import 'package:flutter_study/wanandroid/const/Api.dart';
import 'package:http/http.dart' as http;

//获取主页文章列表数据
Future<ArticleResponseBean> getHomeArticleData(int offset) async {
  //异步方法执行的指定格式，最后返回值为Future匿名方法中的参数值
  var response = await http.get(Api.getArticles(offset));
  if (response?.statusCode == 200) {
    var articleBean = ArticleResponseBean.fromJson(json.decode(response.body));
    if (articleBean.errorCode == 0) {
      return articleBean;
    } else {
      throw Exception("服务器异常");
    }
  } else {
    throw Exception("网络错误");
  }
}

//获取主页轮播图
Future<BannerResponseBean> getHomeBannerData() async {
  http.Response response = await http.get(Api.HOME_BANNER_URL);
  if (response?.statusCode == 200) {
    var bannerResponseBean =
        BannerResponseBean.fromJson(json.decode(response.body));
    if (bannerResponseBean.errorCode == 0) {
      return bannerResponseBean;
    } else {
      throw Exception('服务器异常');
    }
  } else {
    throw Exception('网络错误');
  }
}

//获取项目类型
Future<ProjectTabResonseBean> getProjectTabData() async {
  http.Response response = await http.get(Api.PROJECT_TAB_URL);
  if (response?.statusCode == 200) {
    var bean = ProjectTabResonseBean.fromJson(json.decode(response.body));
    if (bean.errorCode == 0) {
      return bean;
    } else {
      throw Exception('服务器异常');
    }
  } else {
    throw Exception('网络错误');
  }
}

//获取项目列表数据
Future<ProjectResponseBean> getProjectData(int offset, String cid) async {
  var response = await http.get(Api.getProjects(offset, cid));
  if (response?.statusCode == 200) {
    var projectResponseBean =
        ProjectResponseBean.fromJson(json.decode(response.body));
    if (projectResponseBean?.errorCode == 0) {
      return projectResponseBean;
    } else {
      throw Exception('服务器异常');
    }
  } else {
    throw Exception('网络错误');
  }
}

//获取系统页面列表数据
Future<SystemResponseBean> getSystemData() async {
  var response = await http.get(Api.TREE_URL);
  if (response?.statusCode == 200) {
    var systemRepsonseBean =
        SystemResponseBean.fromJson(json.decode(response.body));
    if (systemRepsonseBean?.errorCode == 0) {
      return systemRepsonseBean;
    } else {
      throw Exception('服务器异常');
    }
  } else {
    throw Exception('网络错误');
  }
}

//获取体系文章列表数据
Future<ArticleResponseBean> getSystemArticleData(int offset, String cid) async {
  //异步方法执行的指定格式，最后返回值为Future匿名方法中的参数值
  var response = await http.get(Api.getSystemArticleList(offset, cid));
  if (response?.statusCode == 200) {
    var articleBean = ArticleResponseBean.fromJson(json.decode(response.body));
    if (articleBean.errorCode == 0) {
      return articleBean;
    } else {
      throw Exception("服务器异常");
    }
  } else {
    throw Exception("网络错误");
  }
}

//获取体系文章列表数据
Future<NavigationResponseBean> getNavigationPageData() async {
  var response = await http.get(Api.NAVI_URL);
  if (response?.statusCode == 200) {
    var bean = NavigationResponseBean.fromJson(json.decode(response.body));
    if (bean?.errorCode == 0) {
      return bean;
    } else {
      throw Exception("服务器异常");
    }
  } else {
    throw Exception("网络错误");
  }
}

//登陆
Future<LoginResponseBean> login(String userName, String password) async {
  var response = await http
      .post(Api.LOGIN_URL, body: {'username': userName, 'password': password});
  if (response?.statusCode == 200) {
    var loginResponseBean =
        LoginResponseBean.fromJson(json.decode(response.body));
    if (loginResponseBean?.errorCode == 0) {
      return loginResponseBean;
    } else {
      throw Exception('服务器异常');
    }
  } else {
    throw Exception('网络错误');
  }
}
