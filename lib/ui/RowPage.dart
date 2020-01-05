
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Page'),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.message,
                size: 16,
                color: Color(0xFF999999),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              Text(
                "sdfdff",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                  decoration: TextDecoration.none
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.favorite,
                size: 16,
                color: Color(0xFFFFC600),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              Text(
                "sdfdff",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                    decoration: TextDecoration.none
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.share,
                size: 16,
                color: Color(0xFF999999),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              Text(
               "sdfdff",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                    decoration: TextDecoration.none
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
