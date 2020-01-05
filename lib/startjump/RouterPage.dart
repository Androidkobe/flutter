import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouterPage extends StatelessWidget {

  RouterData routerData;

  RouterPage({data:RouterData}){
    this.routerData = data;
  }

  @override
  Widget build(BuildContext context) {
    return RouterWidget(routerData);
  }
}

class RouterWidget extends StatelessWidget {

  RouterData routerData;

  RouterWidget(this.routerData);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var str = routerData.action;
    return Scaffold(
        appBar: AppBar(
          title: Text('RouterPage'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("接收的参数 = $str"),
            Container(
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed:(){
                  Navigator.pop(context,"小丁");
                },
                textColor: Colors.red,
                child: Text("退出"),
              ),
            ),
          ],
        ));
  }
}

class RouterData {
  String action;
  RouterData(this.action);
}
