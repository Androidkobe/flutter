import 'package:flutter/material.dart';
import 'package:flutter_app/common/CommonContext.dart';
import 'package:flutter_app/common/CommonRouters.dart';

class StartJumpMainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridViewAction();
  }
}

class GridViewAction extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Start Jump Widget"),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: true,
      ),
      body: Center(
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
              }))),
    );
  }
}

final List<ItemData> dataList = [
  ItemData(JumpRoutersName[0], Icons.call_made, JumpRoutersName[0]),
  ItemData(JumpRoutersName[1], Icons.call_missed, JumpRoutersName[1]),
];

//基础数据
class ItemData {
  String name;
  IconData iconData;
  String routerName;

  ItemData(this.name, this.iconData, this.routerName);
}
