import 'package:flutter/material.dart';
import 'package:flutter_bottom_tab_demo/consts.dart';
import 'package:flutter_bottom_tab_demo/widgets/bottom_navigation_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: APP_TITLE,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BottomNavigationWidget(),);
  }
}
