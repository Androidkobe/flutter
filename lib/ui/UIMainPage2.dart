import 'package:flutter/material.dart';
import 'package:flutter_app/ui/ColumnPage.dart';
import 'package:flutter_app/ui/ExpendPage.dart';
import 'package:flutter_app/ui/GridViewPage.dart';
import 'package:flutter_app/ui/ListViewPage.dart';
import 'package:flutter_app/ui/RouterPage.dart';
import 'package:flutter_app/ui/RowPage.dart';

class UIPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.red,
        home: new UIMainPage(),
        routes: {
          "my_route": (context) {
            return RouterPage();
          }
        });
  }
}

class UIMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
              child: Text('Column Page'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ColumnPage()));
              }),
          RaisedButton(
              child: Text('Row Page'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RowPage()));
              }),
          RaisedButton(
              child: Text('Expend Page'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExpendPage()));
              }),
          MyRoute(),
          RaisedButton(
              child: Text('注册路由跳转'),
              onPressed: () {
                Navigator.pushNamed(context, "my_route");
              }),
          RaisedButton(
              child: Text('ListView'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListViewPage()));
              }),
          RaisedButton(
              child: Text('GridView'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GridViewPage()));
              }),
        ],
      ),
    );
  }
}

class MyRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyRouter();
  }
}

class MyRouter extends State<MyRoute> {
  var str = "直接跳转";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () async {
        str = await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RouterPage()),
        );
        print("路由返回值: $str");
        setState(() {});
      },
      child: Text('$str'),
    );
  }
}
