import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expend Page'),
        backgroundColor: Colors.red,
      ),
      body: renderInteractionArea(),
    );
  }

  Widget renderInteractionArea() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Text(
                  "第一格",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFFFFFFF),
                      decoration: TextDecoration.none),
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: Text(
                  "第二格",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFFFFFFF),
                      decoration: TextDecoration.none),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blueAccent,
                child: Text(
                  "第三格",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFFFFFFF),
                      decoration: TextDecoration.none),
                ),
              ))
        ],
      ),
    );
  }
}
