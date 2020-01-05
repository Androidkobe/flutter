import 'package:flutter/material.dart';
import 'package:flutter_app/startjump/StartNewWidget.dart';
import 'package:flutter_app/startjump/StartNewWidgetForResult.dart';

import '../ui/ColumnPage.dart';
import '../ui/ExpendPage.dart';
import '../ui/GridViewPage.dart';
import '../ui/ListViewPage.dart';
import '../startjump/RouterPage.dart';
import '../ui/RowPage.dart';

final  List<String> UIWidgetRoutersName = [
  "Column",
  "Row",
  "Expend",
  "ListView",
  "GridView",
  "Router"
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
  UIWidgetRoutersName[5]: (BuildContext context) => RouterPage(),
  //widget 跳转
  JumpRoutersName[0]:(BuildContext context) => StartNewWidget(),
  JumpRoutersName[1]:(BuildContext context) => StartNewWidgetForResult(),
};