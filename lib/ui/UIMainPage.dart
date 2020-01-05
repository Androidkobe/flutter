import 'package:flutter/material.dart';
import 'package:flutter_app/common/CommonContext.dart';
import 'package:flutter_app/common/CommonRouters.dart';

class UIPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridViewAction();
  }
}

class GridViewAction extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: GridView.count(
            padding: EdgeInsets.all(10),
            crossAxisCount: 3,
            children: List.generate(dataList.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(BaseContext.baseContext, dataList[index].routerName);
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Icon(dataList[index].iconData),
                      Text(
                        dataList[index].name,
                      )
                    ],
                  ),
                ),
              );
            })));
  }
}

final List<ItemData> dataList = [
  ItemData(UIWidgetRoutersName[0], Icons.arrow_downward, UIWidgetRoutersName[0]),
  ItemData(UIWidgetRoutersName[1], Icons.arrow_forward, UIWidgetRoutersName[1]),
  ItemData(UIWidgetRoutersName[2], Icons.view_quilt, UIWidgetRoutersName[2]),
  ItemData(UIWidgetRoutersName[3], Icons.list, UIWidgetRoutersName[3]),
  ItemData(UIWidgetRoutersName[4], Icons.grid_on, UIWidgetRoutersName[4]),
];

//基础数据
class ItemData {
  String name;
  IconData iconData;
  String routerName;

  ItemData(this.name, this.iconData, this.routerName);
}
