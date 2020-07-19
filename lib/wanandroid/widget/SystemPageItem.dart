import 'package:flutter/material.dart';
import 'package:flutter_study/wanandroid/bean/SystemResponseBean.dart';

class SystemPageItem extends StatelessWidget {
  SystemListBean data;

  SystemPageItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            data.name,
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 10,
            children: data.children.map((v) {
              return Chip(
                backgroundColor: _getColor(v.name),
                label: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/SystemListPage', arguments: {
                      "id": v.id.toString(),
                      "title": v.name,
                    });
                  },
                  child: Text(
                    v.name,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }).toList(),
          ),
          Divider(),
        ],
      ),
    );
  }

  _getColor(String name) {
    final int hash = name.hashCode & 0xffff;
    final double hue = (360.0 * hash / (1 << 11)) % 360.0;
    return HSVColor.fromAHSV(1.0, hue, 0.4, 0.90).toColor();
  }
}
