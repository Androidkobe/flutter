import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Page'),
        backgroundColor: Colors.red,
      ),
      body: getGridWidget1(),
    );
  }

  Widget getGridWidget1() {
    //横向数量 固定
    return GridView.count(
      crossAxisSpacing: 5.0,  //水平间距
      mainAxisSpacing: 5.0,   //垂直间距
      padding: EdgeInsets.all(10.0),
      crossAxisCount: 4,//行数量
      childAspectRatio: 1.0,
      scrollDirection: Axis.horizontal,//滑动方向
      //scrollDirection: Axis.vertical,
      children: getWidgetList(),
    );
  }

  Widget getGridWidget2() {
    List<String> datas = getDataList();
    return GridView.builder(
        itemCount: datas.length,
        //SliverGridDelegateWithFixedCrossAxisCount 构建一个横轴固定数量Widget
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //横轴元素个数
            crossAxisCount: 3,
            //纵轴间距
            mainAxisSpacing: 20.0,
            //横轴间距
            crossAxisSpacing: 10.0,
            //子组件宽高长度比例
            childAspectRatio: 2.0),
        itemBuilder: (BuildContext context, int index) {
          //Widget Function(BuildContext context, int index)
          return getItemContainer(datas[index]);
        });
  }

  Widget getGridWidget3() {
    List<String> datas = getDataList();
    return GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 20.0,
        ),
        childrenDelegate: SliverChildBuilderDelegate((context, position) {
          return getItemContainer(datas[position]);
        }, childCount: datas.length));
  }

  Widget getGridWidget4() {
    List<String> datas = getDataList();
    return GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 20.0,
        ),
        childrenDelegate: SliverChildBuilderDelegate((context, position) {
          return getItemContainer(datas[position]);
        }, childCount: datas.length));
  }

  List<String> getDataList() {
    List<String> list = [];
    for (int i = 0; i < 100; i++) {
      list.add(i.toString());
    }
    return list;
  }

  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }

  Widget getItemContainer(String item) {
    return Card(
        elevation: 20,
        child: Container(
          width: 5.0,
          height: 5.0,
          alignment: Alignment.center,
          child: Text(
            item,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          color: Colors.red,
        ));
  }
}
