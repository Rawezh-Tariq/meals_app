import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('My Drawer',
                style: Theme.of(context).textTheme.titleLarge),
          ),
          ListTile(
            title:
                Text('Item 1', style: Theme.of(context).textTheme.titleSmall),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title:
                Text('Item 2', style: Theme.of(context).textTheme.titleSmall),
          ),
        ],
      ),
    );
  }
}
