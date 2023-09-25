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
  List<String> addDropDowns = [];
  List<String?> mySelectedValue = [];
  List<Item> myFilteredItems = [];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: widget.curentTheme.drawerTheme.backgroundColor,
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          DrawerHeader(
            child: Text('My Filters',
                style: widget.curentTheme.textTheme.titleLarge!
                    .copyWith(color: Colors.orange)),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  addDropDowns.add('filter ${addDropDowns.length}');
                  mySelectedValue.add(null);
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
            itemCount: addDropDowns.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(50),
                  alignment: Alignment.center,
                  value: mySelectedValue[index],
                  hint: Text('Filter by Category',
                      style: widget.curentTheme.textTheme.titleSmall!
                          .copyWith(color: Colors.orange)),
                  isExpanded: true,
                  style: widget.curentTheme.textTheme.titleSmall!
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
                      mySelectedValue[index] = name;
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
                  for (var item in myItems) {
                    item.isFiltered = false;
                    for (var element in mySelectedValue) {
                      if (item.categorise.name == element) {
                        item.isFiltered = true;
                        myFilteredItems.add(item);
                      }
                    }
                  }

                  for (var a in myFilteredItems) {
                    myItems.where((element) => element.name == a.name).forEach(
                      (element) {
                        element.isFiltered = true;
                      },
                    );
                  }

                  Scaffold.of(context).closeDrawer();
                  widget.onCloseDrawer();
                },
                child: Text(
                  'Apply Filters',
                  style: widget.curentTheme.textTheme.titleMedium!.copyWith(
                      color: widget.curentTheme == myLightTheme
                          ? Colors.white
                          : Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  for (var element in myItems) {
                    element.isFiltered == false
                        ? element.isFiltered = true
                        : null;
                  }
                  Scaffold.of(context).closeDrawer();
                  widget.onCloseDrawer();
                },
                child: Text(
                  'Reset',
                  style: widget.curentTheme.textTheme.titleMedium!
                      .copyWith(color: Colors.orange),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
