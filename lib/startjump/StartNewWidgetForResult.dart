import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/startjump/RouterPage.dart';

class StartNewWidgetForResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StartWidgetForResult();
  }
}

class StartWidgetForResult extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StateStartWidgetForResult();
  }
}

class StateStartWidgetForResult extends State<StatefulWidget> {
  var result = "";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('StartNewWidgetForResult'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Text("接收返回参数：$result"),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 30),
            child: RaisedButton(
              onPressed: () async {
                var str = await Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new RouterPage(data: new RouterData("我是传递的参数XM"));
                }));
                setResult(str);
              },
              textColor: Colors.red,
              child: Text("传参跳转新页面"),
            ),
          )
        ],
      ),
    );
  }

  void setResult(String str){
    setState(() {
      result = str;
    });
  }
}
