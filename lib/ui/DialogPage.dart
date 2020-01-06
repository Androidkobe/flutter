import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/common/Toast.dart';

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Page'),
        backgroundColor: Colors.red,
      ),
      body: renderInteractionArea(context),
    );
  }

  Widget renderInteractionArea(BuildContext context) {
    return Center(
      child: RaisedButton(
        textColor: Colors.red,
        child: Text("show dialog"),
        onPressed: () {
          _askedToLead(context);
        },
      ),
      //这两个属性不设置 默认会充满整个布局
      widthFactor: 7, // 子空间的宽度 7倍
      heightFactor: 7, //子空间的高度 7倍
    );
  }

  Future<void> _askedToLead(BuildContext context) async {
    switch (await showDialog<Department>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Select assignment'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.treasury);
                },
                child: const Text('Treasury department'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.state);
                },
                child: const Text('State department'),
              ),
            ],
          );
        })) {
      case Department.treasury:
        Toast.show("treasury");
        break;
      case Department.state:
        Toast.show("state");
        break;
    }
  }
}

enum Department { state, treasury }
