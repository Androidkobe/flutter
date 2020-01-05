import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/startjump/RouterPage.dart';

class StartNewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StartNewWidget'),
        backgroundColor: Colors.red,
      ),
      body: StartWidget(),
    );
  }
}

class StartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(builder: (context) {
            return new RouterPage(data: new RouterData("我是传递的参数"));
          }));
        },
        textColor: Colors.red,
        child: Text("传参跳转新页面"),
      ),
    );
  }
}
