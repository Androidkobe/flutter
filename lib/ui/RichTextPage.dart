
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/common/Toast.dart';

class RichTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText Page'),
        backgroundColor: Colors.red,
      ),
      body:renderInteractionArea(),
        );
  }


  Widget renderInteractionArea() {
    return Column(
      children: <Widget>[
        RichText1(),

      ],
    );
  }
}

class RichText1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
        text: TextSpan(
          text: 'This is RichText',
          style: new TextStyle(
            //false的时候不显示
              inherit: true,
              //字体大小
              fontSize: 16,
              //黑色
              color: Colors.black
          ),
          recognizer: TapGestureRecognizer()..onTap = (){
            Toast.show("This is RichText");
          },
          children: <TextSpan>[
            new TextSpan(
              text: 'Android艺术探索',
              style: new TextStyle(
                color: Colors.redAccent,
                //字体粗细
                fontWeight: FontWeight.bold,
              ),

            ),

            new TextSpan(text: '第一行代码'),

            new TextSpan(
              text: 'Android进阶之光',
              style: new TextStyle(
                color: Colors.indigo,
                //字体样式
                fontSize: 20,
              ),
            )
          ],
        )
    );;
  }

}
