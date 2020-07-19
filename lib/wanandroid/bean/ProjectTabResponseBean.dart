class ProjectTabResonseBean {
  List<ProjectTabBean> data;
  int errorCode;
  String errorMsg;

  ProjectTabResonseBean({this.data, this.errorCode, this.errorMsg});

  ProjectTabResonseBean.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<ProjectTabBean>();
      json['data'].forEach((v) {
        data.add(new ProjectTabBean.fromJson(v));
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

class ProjectTabBean {
  List<Null> children;
  int courseId;
  int id;
  String name;
  int order;
  int parentChapterId;
  bool userControlSetTop;
  int visible;

  ProjectTabBean(
      {
        this.courseId,
        this.id,
        this.name,
        this.order,
        this.parentChapterId,
        this.userControlSetTop,
        this.visible});

  ProjectTabBean.fromJson(Map<String, dynamic> json) {
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
