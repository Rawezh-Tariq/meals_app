import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key, required this.curentTheme});
  final ThemeData curentTheme;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: curentTheme.drawerTheme.backgroundColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('My Drawer', style: curentTheme.textTheme.titleLarge),
          ),
          ListTile(
            title: Text('Item 1', style: curentTheme.textTheme.titleSmall),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2', style: curentTheme.textTheme.titleSmall),
          ),
        ],
      ),
    );
  }
}
