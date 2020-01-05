import 'package:flutter/material.dart';

import '../ui/ColumnPage.dart';
import '../ui/ExpendPage.dart';
import '../ui/GridViewPage.dart';
import '../ui/ListViewPage.dart';
import '../ui/RouterPage.dart';
import '../ui/RowPage.dart';

final  List<String> UIWidgetRoutersName = [
  "Column",
  "Row",
  "Expend",
  "ListView",
  "GridView",
  "Router"
];

final Map<String, WidgetBuilder> dataRouters = {
  UIWidgetRoutersName[0]: (BuildContext context) => ColumnPage(),
  UIWidgetRoutersName[1]: (BuildContext context) => RowPage(),
  UIWidgetRoutersName[2]: (BuildContext context) => ExpendPage(),
  UIWidgetRoutersName[3]: (BuildContext context) => ListViewPage(),
  UIWidgetRoutersName[4]: (BuildContext context) => GridViewPage(),
  UIWidgetRoutersName[5]: (BuildContext context) => RouterPage(),
};