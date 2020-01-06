
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center Page'),
        backgroundColor: Colors.red,
      ),
      body:renderInteractionArea(),
        );
  }


  Widget renderInteractionArea() {
    return  Center(
      child: Icon(Icons.pets, size: 36, color: Colors.red),
      //这两个属性不设置 默认会充满整个布局
      widthFactor: 7,// 子空间的宽度 7倍
      heightFactor: 7,//子空间的高度 7倍
    );
  }
}
