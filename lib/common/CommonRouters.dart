import 'package:flutter/material.dart';
import 'package:flutter_app/startjump/StartNewWidget.dart';
import 'package:flutter_app/startjump/StartNewWidgetForResult.dart';
import 'package:flutter_app/ui/CenterPage.dart';
import 'package:flutter_app/ui/DialogPage.dart';
import 'package:flutter_app/ui/FlatButtonPage.dart';
import 'package:flutter_app/ui/PaddingPage.dart';
import 'package:flutter_app/ui/RichTextPage.dart';
import 'package:flutter_app/ui/StackPage.dart';
import 'package:flutter_app/ui/TextFieldPage.dart';
import 'package:flutter_app/ui/TextPage.dart';

import '../ui/ColumnPage.dart';
import '../ui/ExpendPage.dart';
import '../ui/GridViewPage.dart';
import '../ui/ListViewPage.dart';
import '../ui/RowPage.dart';
import '../ui/ContainerPage.dart';

final  List<String> UIWidgetRoutersName = [
  "Column",
  "Row",
  "Expend",
  "ListView",
  "GridView",
  "Container",
  "Padding",
  "Center",
  "Stack",
  "Text",
  "RichText",
  "TextField",
  "FlatButton",
  "Dialog"
];

final  List<String> JumpRoutersName = [
  "start",
  "startForResult",
];

final Map<String, WidgetBuilder> dataRouters = {
  //ui 组件
  UIWidgetRoutersName[0]: (BuildContext context) => ColumnPage(),
  UIWidgetRoutersName[1]: (BuildContext context) => RowPage(),
  UIWidgetRoutersName[2]: (BuildContext context) => ExpendPage(),
  UIWidgetRoutersName[3]: (BuildContext context) => ListViewPage(),
  UIWidgetRoutersName[4]: (BuildContext context) => GridViewPage(),
  UIWidgetRoutersName[5]: (BuildContext context) => ContainerPage(),
  UIWidgetRoutersName[6]: (BuildContext context) => PaddingPage(),
  UIWidgetRoutersName[7]: (BuildContext context) => CenterPage(),
  UIWidgetRoutersName[8]: (BuildContext context) => StackPage(),
  UIWidgetRoutersName[9]: (BuildContext context) => TextPage(),
  UIWidgetRoutersName[10]: (BuildContext context) => RichTextPage(),
  UIWidgetRoutersName[11]: (BuildContext context) => TextFieldPage(),
  UIWidgetRoutersName[12]: (BuildContext context) => FlatButtonPage(),
  UIWidgetRoutersName[13]: (BuildContext context) => DialogPage(),
  //widget 跳转
  JumpRoutersName[0]:(BuildContext context) => StartNewWidget(),
  JumpRoutersName[1]:(BuildContext context) => StartNewWidgetForResult(),
};