

import 'package:flutter/material.dart';
import 'package:flutter_app/ui/UIMainPage.dart';


/// This Widget is the main application widget.
class FlutterHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MyStatefulWidget();
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
   static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

   List<Widget> _widgetOptions = <Widget>[

     UIPage(),

     Text(
      '敬请期待',
      style: optionStyle,
    ),
    Text(
      '还没开始',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.aspect_ratio),
            title: Text('控件布局'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new),
            title: Text('实战'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inclusive),
            title: Text('拓展'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}