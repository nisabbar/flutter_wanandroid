import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_study/wanandroid/bean/ProjectResponseBean.dart';
import 'package:flutter_study/wanandroid/model/Repository.dart';
import 'package:flutter_study/wanandroid/widget/CustomSmartRefresherFoot.dart';
import 'package:flutter_study/wanandroid/widget/ProjectItem.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:toast/toast.dart';

//文章
class ProjectListPage extends StatefulWidget {
  //文章类型Id
  String cid;

  ProjectListPage(this.cid);

  @override
  ProjectListPageState createState() {
    return ProjectListPageState();
  }
}

class ProjectListPageState extends State<ProjectListPage>
    with AutomaticKeepAliveClientMixin {
  int _offset = 0;
  List<ProjectBean> _projectData = [];

  RefreshController _refreshController =
      RefreshController(initialRefresh: true);

  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _getProjectListData();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullUp: true,
      controller: _refreshController,
      child: _creatGridView(),
      footer: CustomSmartRefresherFoot(),
      onLoading: () {
        _getProjectListData();
      },
      onRefresh: () {
        _offset = 0;
        _getProjectListData();
      },
    );
  }

//  /创建文章列表
//  _creatGridView() {
//    return GridView.builder(
//        itemCount: _projectData.length,
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//          crossAxisCount: 2,
//        ),
//        itemBuilder: (context, index) {
//          return Card(
//            child: Text(_projectData[index].title),
//          );
//        });
//  }

  ///创建文章列表
  _creatGridView() {
    return StaggeredGridView.countBuilder(
      itemCount: _projectData.length,
      itemBuilder: (context, index) {
        return ProjectItem(_projectData[index]);
      },
      crossAxisCount: 4,
      staggeredTileBuilder: (index) {
        return StaggeredTile.fit(2);
      },
    );
  }

  //获取项目列表数据
  _getProjectListData() {
    getProjectData(this._offset, this.widget.cid).then((v) {
      setState(() {
        if (_offset == 0) {
          _refreshController.refreshCompleted(resetFooterState: true);
          _projectData = v.data.datas;
        } else {
          if (v.data.datas.length > 0) {
            _projectData.addAll(v.data.datas);
            _refreshController.loadComplete();
          } else {
            _refreshController.loadNoData();
          }
        }
        _offset++;
      });
    }).catchError((error) {
      Toast.show(error.toString(), context);
      _offset == 0
          ? _refreshController.refreshCompleted()
          : _refreshController.loadFailed();
    });
  }

  @override
  bool get wantKeepAlive => true;
}
