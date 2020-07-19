import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/wanandroid/bean/ArticleResponseBean.dart';
import 'package:flutter_study/wanandroid/bean/BannerResponseBean.dart';
import 'package:flutter_study/wanandroid/model/Repository.dart';
import 'package:flutter_study/wanandroid/widget/CustomSmartRefresherFoot.dart';
import 'package:flutter_study/wanandroid/widget/HomeCardItem.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:toast/toast.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State {
  //文章数据
  List<ArticleBean> _homeCardItems = [];

  //轮播图数据
  List<BannerBean> _bannerData = [];

  //文章页数
  int _offset = 0;

  //刷新、加载更多控制器
  RefreshController _refreshController =
      RefreshController(initialRefresh: true);

  //列表滚动控制器
  ScrollController _scrollController = new ScrollController();

  //浮动按钮是否可见
  bool _floatButtonShow = false;

  ///初始化状态
  @override
  void initState() {
    super.initState();
    _getArticleData();
    _getBannerData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 300 && !_floatButtonShow) {
        setState(() {
          _floatButtonShow = true;
        });
      } else if (_scrollController.position.pixels < 300 && _floatButtonShow) {
        setState(() {
          _floatButtonShow = false;
        });
      }
    });
  }

  ///销毁
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _refreshController.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton:
            _floatButtonShow ? _createFloatingActionButton() : null,
        body: _createSmartRefresher());
  }

  ///获取文章数据
  _getArticleData() {
    //获取Article数据
    getHomeArticleData(_offset).then((v) {
      setState(() {
        if (_offset == 0) {
          _homeCardItems = v.data.datas;
          _refreshController.refreshCompleted();
        } else {
          if (v.data.datas.length > 0) {
            _homeCardItems.addAll(v.data.datas);
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

  ///获取轮播图数据
  _getBannerData() {
    getHomeBannerData().then((v) {
      setState(() {
        _bannerData = v.data;
      });
    }).catchError((error) {
      Toast.show(error.toString(), context);
      _refreshController.refreshCompleted();
    });
  }

  ///创建列表
  _createListView() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _homeCardItems.length + 1,
      itemBuilder: (context, index) {
        return index == 0
            ? _createBanner()
            : ArticleCardItem(_homeCardItems[index - 1]);
      },
    );
  }

  ///创建刷新控件
  _createSmartRefresher() {
    return SmartRefresher(
      enablePullUp: true,
      child: _createListView(),
      onRefresh: () {
        _offset = 0;
        _getArticleData();
        _getBannerData();
      },
      onLoading: () {
        _getArticleData();
        _getBannerData();
      },
      footer: CustomSmartRefresherFoot(),
      controller: _refreshController,
    );
  }

  ///创建轮播图
  _createBanner() {
    return Container(
        height: 180,
        child: _bannerData.length > 0
            ? Swiper(
                itemBuilder: (context, index) {
                  return Image.network(
                    _bannerData[index].imagePath,
                    fit: BoxFit.cover,
                  );
                },
                itemCount: _bannerData.length,
                autoplay: true,
                pagination: SwiperPagination(),
              )
            : Container(
                color: Colors.white10,
              ));
  }

  ///创建浮动按钮
  _createFloatingActionButton() {
    return FloatingActionButton(
      child: Icon(Icons.arrow_upward),
      onPressed: () {
        _scrollController.animateTo(0,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      },
    );
  }
}
