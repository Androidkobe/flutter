
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Page'),
        backgroundColor: Colors.red,
      ),
      body:renderInteractionArea(),
        );
  }


  Widget renderInteractionArea() {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(

        children: <Widget>[
          //网络
          Image.network("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3475570381,2768348736&fm=26&gp=0.jpg"),
          //本地
          Image(
            image: AssetImage("images/lake.jpg"),
          ),
            //本地
            Image.asset("images/lake.jpg"),
        ],
      ),
    );
  }
}
