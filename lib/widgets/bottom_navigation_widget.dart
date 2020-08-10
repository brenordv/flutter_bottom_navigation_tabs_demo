import 'package:flutter/material.dart';
import 'package:flutter_bottom_tab_demo/consts.dart';
import 'package:flutter_bottom_tab_demo/shared/sample_page_widget.dart';
import 'package:flutter_bottom_tab_demo/widgets/custom_app_drawer.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentTab = 0;
  List<Widget> _tabs = [
    SamplePageWidget(Icons.home, 'This is the home of your app!'),
    SamplePageWidget(Icons.camera, 'Imagine your camera working here...'),
    SamplePageWidget(Icons.photo_library, 'Photos would be placed here.'),
  ];
  bool loadedOnceFromRoute = false;

  @override
  Widget build(BuildContext context) {
    final tabIndexFromRoute = ModalRoute.of(context).settings.arguments;
    if (tabIndexFromRoute != null && !loadedOnceFromRoute) {
      setState(() {
        _currentTab = tabIndexFromRoute;
        loadedOnceFromRoute = true;
      });
      
    }

    return Scaffold(
      appBar: AppBar(title: Text(APP_TITLE)),
      drawer: CustomAppDrawer(),
      body: _tabs[_currentTab],
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (indexOfClickedTab) {
          setState(() {
            _currentTab = indexOfClickedTab;
          });
        },        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: Text('Camera'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library),
            title: Text('Gallery'),
          )
        ],
      ),
    );
  }
}
