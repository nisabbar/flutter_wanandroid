class Api {
  static String BASE_URL='https://www.wanandroid.com';

  /// 获取主页文章列表数据
  /// [offset]页数
  static String getArticles(int offset) =>
      'https://www.wanandroid.com/article/list/' + offset.toString() + '/json';

  ///获取项目列表数据
  static String getProjects(int offset, String cid) =>
      'https://www.wanandroid.com/project/list/' +
      offset.toString() +
      '/json?cid=' +
      cid;

  ///获取不同系统分类列表数据
  static String getSystemArticleList(int offset, String cid) =>
      'https://www.wanandroid.com/article/list/' +
          offset.toString() +
          '/json?cid=' +
          cid;

  ///主页轮播图
  static const HOME_BANNER_URL = 'https://www.wanandroid.com/banner/json';

  static const PROJECT_TAB_URL = 'https://www.wanandroid.com/project/tree/json';

  static const TREE_URL = 'https://www.wanandroid.com/tree/json';

  static const TREE_ITEM_BEFORE = '';
  static const TREE_ITEM_AFTER = '';

  static const NAVI_URL = 'https://www.wanandroid.com/navi/json';

  static const LOGIN_URL = 'https://www.wanandroid.com/user/login';
  static const REGISTER_URL = 'https://www.wanandroid.com/user/register';
}
