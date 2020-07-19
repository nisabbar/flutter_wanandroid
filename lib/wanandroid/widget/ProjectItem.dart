import 'package:flutter/material.dart';
import 'package:flutter_study/wanandroid/bean/ProjectResponseBean.dart';

class ProjectItem extends StatelessWidget {
  ProjectBean data;

  ProjectItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network(
                data.envelopePic,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                data.title,
                maxLines: 2,
                style: TextStyle(fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  LimitedBox(
                    maxWidth: 50,
                    child: Text(
                      data.author,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Text(
                    data.niceDate,
                    style: TextStyle(fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, '/WebViewPage',
              arguments: {'title': data.title, 'url': data.projectLink});
        },
      ),
    );
  }
}
