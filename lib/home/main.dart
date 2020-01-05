import 'package:flutter/material.dart';
import 'package:flutter_app/common/CommonContext.dart';
import 'package:flutter_app/common/CommonRouters.dart';
import 'package:flutter_app/home/FlutterHomePage.dart';
import 'package:flutter_app/startjump/StartJumpMainPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      routes: dataRouters,
      home: DrawerWidget(),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BaseContext.baseContext = context;
    return MaterialApp(
      color: Colors.red,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Flutter'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text(
                  'Flutter Learn',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.filter_none),
                title: Text('界面跳转'),
                onTap: () {
                  Navigator.push( context,
                      MaterialPageRoute(builder: (context) => StartJumpMainPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.filter_b_and_w),
                title: Text('动画/效果'),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new SimpleDialog(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("待开发"),
                              ],
                            ),
                          ],
                        );
                      });
                },
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('多媒体'),
              ),
              ListTile(
                leading: Icon(Icons.backup),
                title: Text('常用第三方库'),
              ),
              ListTile(
                leading: Icon(Icons.adb),
                title: Text('混合原生'),
              ),
              ListTile(
                leading: Icon(Icons.adb),
                title: Text('其它'),
              ),
            ],
          ),
        ),
        body: FlutterHomePage(),
      ),
    );
  }
}
