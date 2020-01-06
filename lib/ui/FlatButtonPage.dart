import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/common/Toast.dart';

///
/// FlatButton：扁平化按钮，
//RaisedButton：凸起按钮，
//OutlineButton：带边框按钮，
//IconButton：图标按钮，
//
class FlatButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlatButton Page'),
        backgroundColor: Colors.red,
      ),
      body: renderInteractionArea(),
    );
  }

  Widget renderInteractionArea() {
    return Container(
        alignment: Alignment.center,
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Toast.show("扁平按钮");
              },
              child: Text('扁平按钮'),
              color: Colors.blue,
              //按钮背景色
              textColor: Colors.white,
              //文字的颜色
              onHighlightChanged: (bool b) {
                //水波纹变化回调
              },
              disabledColor: Colors.black,
              //按钮禁用时的显示的颜色
              disabledTextColor: Colors.black38,
              //按钮被禁用的时候文字显示的颜色
              splashColor: Colors.deepOrangeAccent, //水波纹的颜色
            ),
            OutlineButton(
              child: Text('边框按钮1'),
              onPressed: () {
                Toast.show("边框按钮1");
              },
            ),
            OutlineButton(
              borderSide: BorderSide(color: Colors.pink),
              child: Text('边框按钮2'),
              onPressed: () {
                Toast.show("边框按钮2");
              },
            ),
            IconButton(
              splashColor: Colors.pink,
              color: Colors.pink,
              icon: Icon(Icons.search),
              onPressed: () {
                Toast.show("search1");
              },
            ),
            IconButton(
              iconSize: 64,
              splashColor: Colors.pink,
              color: Colors.pink,
              padding: EdgeInsets.all(50),
              icon: Icon(Icons.search),
              onPressed: () {
                Toast.show("search2");
              },
            ),
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RaisedButton(
                  color: Colors.pink,
                  textColor: Colors.white,
                  child: Text('按钮组1 Raise'),
                  onPressed: () {
                    Toast.show("边框按钮1 raise");
                  },
                ),
                FlatButton(
                  color: Colors.pink,
                  textColor: Colors.white,
                  child: Text('按钮组2'),
                  onPressed: () {
                    Toast.show("边框按钮2 raise");
                  },
                )
              ],
            )
          ],
        ));
  }
}
