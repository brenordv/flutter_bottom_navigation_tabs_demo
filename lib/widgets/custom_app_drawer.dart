import 'package:flutter/material.dart';
import 'package:flutter_bottom_tab_demo/widgets/bottom_navigation_widget.dart';

class CustomAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            padding: EdgeInsets.all(8),
            child: Text(
              'Flutter Demo',
              style: Theme.of(context).textTheme.headline6,
            ),
            alignment: Alignment.bottomLeft,
          ),
          Divider(),
          SizedBox(
            height: 8,
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => BottomNavigationWidget(),
                    settings: RouteSettings(arguments: 0)),
              );
            },
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.camera),
              title: Text('Camera'),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => BottomNavigationWidget(),
                    settings: RouteSettings(arguments: 1)),
              );
            },
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.photo_library),
              title: Text('Gallery'),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => BottomNavigationWidget(),
                    settings: RouteSettings(arguments: 2)),
              );
            },
          ),                    
        ],
      ),
    );
  }
}
