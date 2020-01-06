import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Page'),
        backgroundColor: Colors.red,
      ),
      body: renderInteractionArea(),
    );
  }

  Widget renderInteractionArea() {
    var paint = Paint();
    paint.color = Color(0xFF000000);
    return Text("Flutter Text Page",
        style: TextStyle(
          //颜色
          color: Colors.blue,
          //字体大小
          fontSize: 14,
          //字体加粗
          fontWeight: FontWeight.bold,
          //文本背景颜色
          background: paint,
          decoration: TextDecoration.none
        ));
  }

  /// const TextStyle({
//    this.inherit = true,
//    this.color,//文本样式
//    this.fontSize,//字体大小
//    this.fontWeight,//绘制文本时的字体粗细
//    this.fontStyle,//字体变体
//    this.letterSpacing,//水平字母之间的空间间隔(逻辑像素为单位),可以负值
//    this.wordSpacing,//单词之间添加的空间间隔(逻辑像素为单位),可以负值
//    this.textBaseline,//对齐文本的水平线
//    this.height,//文本行与行的高度,作为字体代销的倍数
//    this.locale,//用于选择区域定字形的语言环境
//    this.foreground,//文本的前景色，不能与color共同设置
//    this.background,//文本背景色
//    this.shadows,//Flutter Decoration背景设定(边框，圆角，阴影,渐变等)
//    this.decoration,//绘制文本装饰，添加上下划线，删除线
//    this.decorationColor,//文本装饰的颜色
//    this.decorationStyle,//文本装饰的样式，控制画虚线，点，波浪线
//    this.debugLabel,
//    String fontFamily,//使用字体的名称
//    String package,
//  })
}
