import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

///1- 设置背景色
///2- margin
///3- padding
///4- aligin 对齐方式
///5- decoration 边框  背景  圆角  渐变色 阴影
///
class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Page'),
        backgroundColor: Colors.red,
      ),
      body: renderInteractionArea(),
    );
  }

  Widget renderInteractionArea() {
    return new Container(
//      color: new Color(0xFFFF0000),
      margin: EdgeInsets.all(30.0),//EdgeInsets.only()-->top left ....
      padding: EdgeInsets.fromLTRB(30.0, 0, 0, 0),
      //对齐方式，可选值有：
      alignment: Alignment.centerLeft,
      //装饰，背景边框等，不能与 color 属性同时设置，会绘制在 child 之下，也就是会被 child 覆盖
      decoration: new BoxDecoration(
        //背景填充颜色
        color: new Color(0xFFFF0000),
        //背景边框
        border: new Border.all(
            //边框颜色
            color: new Color(0xFFFFFF00),
            //边框宽度
            width: 5),
        //边框圆角
        borderRadius: new BorderRadius.only(
            topLeft: new Radius.circular(5.0),
            topRight: new Radius.circular(10.0),
            bottomLeft: new Radius.circular(15.0),
            bottomRight: new Radius.circular(20.0)),
        //渐变效果，会覆盖 color
        gradient: new LinearGradient(colors: [
          new Color(0xFFFFDEAD),
          new Color(0xFF98FB98),
          new Color(0xFF6495ED)
        ]),
        //阴影效果
        boxShadow: [new BoxShadow(color: Color(0xFFFF0000), blurRadius: 5.0)],

        backgroundBlendMode: BlendMode.color,//应该是背景混合模式，这个应该比较复杂，后面再研究
      ),
      constraints: new BoxConstraints(maxWidth: 300.0, maxHeight: 400.0),
      //子组件
      child: new Text(
        "Container Page",
        textDirection: TextDirection.ltr,
        style: new TextStyle(color: new Color(0xFFFFFFFF), fontSize: 40.0),
      ),
    );
  }
}
