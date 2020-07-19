class SystemResponseBean {
  List<SystemListBean> data;
  int errorCode;
  String errorMsg;

  SystemResponseBean({this.data, this.errorCode, this.errorMsg});

  SystemResponseBean.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<SystemListBean>();
      json['data'].forEach((v) {
        data.add(new SystemListBean.fromJson(v));
      });
    }
    errorCode = json['errorCode'];
    errorMsg = json['errorMsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['errorCode'] = this.errorCode;
    data['errorMsg'] = this.errorMsg;
    return data;
  }
}

class SystemListBean {
  List<SystemBean> children;
  int courseId;
  int id;
  String name;
  int order;
  int parentChapterId;
  bool userControlSetTop;
  int visible;

  SystemListBean(
      {this.children,
      this.courseId,
      this.id,
      this.name,
      this.order,
      this.parentChapterId,
      this.userControlSetTop,
      this.visible});

  SystemListBean.fromJson(Map<String, dynamic> json) {
    if (json['children'] != null) {
      children = new List<SystemBean>();
      json['children'].forEach((v) {
        children.add(new SystemBean.fromJson(v));
      });
    }
    courseId = json['courseId'];
    id = json['id'];
    name = json['name'];
    order = json['order'];
    parentChapterId = json['parentChapterId'];
    userControlSetTop = json['userControlSetTop'];
    visible = json['visible'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    data['courseId'] = this.courseId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['order'] = this.order;
    data['parentChapterId'] = this.parentChapterId;
    data['userControlSetTop'] = this.userControlSetTop;
    data['visible'] = this.visible;
    return data;
  }
}

class SystemBean {
  int courseId;
  int id;
  String name;
  int order;
  int parentChapterId;
  bool userControlSetTop;
  int visible;

  SystemBean(
      {this.courseId,
      this.id,
      this.name,
      this.order,
      this.parentChapterId,
      this.userControlSetTop,
      this.visible});

  SystemBean.fromJson(Map<String, dynamic> json) {
    courseId = json['courseId'];
    id = json['id'];
    name = json['name'];
    order = json['order'];
    parentChapterId = json['parentChapterId'];
    userControlSetTop = json['userControlSetTop'];
    visible = json['visible'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['courseId'] = this.courseId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['order'] = this.order;
    data['parentChapterId'] = this.parentChapterId;
    data['userControlSetTop'] = this.userControlSetTop;
    data['visible'] = this.visible;
    return data;
  }
}
