import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Page'),
        backgroundColor: Colors.red,
      ),
      body: renderInteractionArea(),
    );
  }

  Widget renderInteractionArea() {
    return Center(
      child: Column(
        children: <Widget>[Stack1(), Stack2()],
      ),
    );
  }
}

class Stack1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //原型图片
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578290705741&di=75cdffd1156560cfeeb69188e119d7af&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201805%2F06%2F20180506170020_hclqu.jpg'),
          radius: 100,
        ),
        Container(
          child: Text(
            '我是介绍',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          decoration: BoxDecoration(color: Colors.blueAccent),
          padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
        )
      ],
      alignment: const FractionalOffset(0.5, 0.9), //位置比例
    );
  }
}

class Stack2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578290705741&di=75cdffd1156560cfeeb69188e119d7af&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201805%2F06%2F20180506170020_hclqu.jpg'),
          radius: 100,
        ),
        Positioned(
          child: Container(
            child: Text(
              '视图位置 2',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            decoration: BoxDecoration(color: Colors.lime),
            padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
          ),
          top: 20.0,
          left: 50.0,
        ),
        Positioned(
            bottom: 40.0,
            left: 50.0,
            child: Container(
              child: Text(
                '视图位置 1',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              decoration: BoxDecoration(color: Colors.blueAccent),
              padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
            ))
      ],
//      alignment: const FractionalOffset(0.5, 0.9),
    );
  }
}
