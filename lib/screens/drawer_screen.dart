import 'package:flutter/material.dart';

import 'package:meals_app/models/items.dart';

import 'package:meals_app/tools/theme.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen(
      {super.key, required this.curentTheme, required this.onCloseDrawer});
  final ThemeData curentTheme;
  final Function onCloseDrawer;

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  List<String> myFilterButton = [];
  List<String?> myFilterValues = [];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: widget.curentTheme.drawerTheme.backgroundColor,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DrawerHeader(
            child: Text('My Filters',
                style: widget.curentTheme.textTheme.titleLarge!
                    .copyWith(color: Colors.orange)),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  myFilterButton.add('filter ${myFilterButton.length}');
                  myFilterValues.add(null);
                });
              },
              child: Text(
                'Create a Filter',
                style: widget.curentTheme.textTheme.titleMedium!.copyWith(
                    color: widget.curentTheme == myLightTheme
                        ? Colors.white
                        : Colors.black),
              )),
          ListView.builder(
            itemCount: myFilterButton.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(50),
                  alignment: Alignment.center,
                  value: myFilterValues[index],
                  hint: Text('Filter by Category',
                      style: widget.curentTheme.textTheme.titleMedium!
                          .copyWith(color: Colors.orange)),
                  isExpanded: true,
                  style: widget.curentTheme.textTheme.titleMedium!
                      .copyWith(color: Colors.orange),
                  dropdownColor: widget.curentTheme.colorScheme.background,
                  elevation: 0,
                  underline: const SizedBox(),
                  iconEnabledColor: Colors.orange,
                  items: [
                    for (int i = 0; i < Categories.values.length; i++)
                      DropdownMenuItem<String>(
                          alignment: Alignment.center,
                          value: Categories.values[i].name,
                          child: Text(Categories.values[i].name)),
                  ],
                  onChanged: (name) {
                    setState(() {
                      myFilterValues[index] = name;
                    });
                  },
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    for (int i = 0; i < myItems.length; i++) {}

                    Scaffold.of(context).closeDrawer();
                    widget.onCloseDrawer();
                  },
                  child: Text(
                    'Apply Filters',
                    style: widget.curentTheme.textTheme.titleMedium!.copyWith(
                        color: widget.curentTheme == myLightTheme
                            ? Colors.white
                            : Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {});
                    Scaffold.of(context).closeDrawer();
                    widget.onCloseDrawer();
                  },
                  child: Text(
                    'Reset',
                    style: widget.curentTheme.textTheme.titleMedium!
                        .copyWith(color: Colors.orange),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
