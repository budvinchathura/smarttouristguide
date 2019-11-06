import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Places'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/');
              
            },
          ),
          ListTile(
            title: Text('Accommodation'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/second');
              
            },
          ),
          ListTile(
            title: Text('Emergency'),
            onTap: () {
              // Navigator.of(context).pop();
              // Navigator.of(context).pushNamed('/second');
              
            },
          )
        ],
      ),
    );
    
  }
}
