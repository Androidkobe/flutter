import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Router Page'),
          backgroundColor: Colors.red,
        ),
        body: Container(

          child:RaisedButton(
            onPressed: (){
              Navigator.pop(context,"我是返回参数");
            },
            textColor:Colors.red ,
            child: Text("关闭当前页面"),
          ),
        ));
  }
}
