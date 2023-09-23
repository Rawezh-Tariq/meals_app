import 'package:flutter/material.dart';
import 'package:meals_app/models/items.dart';
import 'package:meals_app/screens/home_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key, required this.curentTheme});
  final ThemeData curentTheme;

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

String? myFilterCategory;

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    List<Item> mymy = myItems;
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
          ListTile(
            title: DropdownButton<String>(
              borderRadius: BorderRadius.circular(50),
              value: myFilterCategory,
              hint: Text(
                'Filter by Category',
                style: widget.curentTheme.textTheme.titleMedium!
                    .copyWith(color: Colors.orange),
              ),
              isExpanded: true,
              style: widget.curentTheme.textTheme.titleMedium!
                  .copyWith(color: Colors.orange),
              dropdownColor: widget.curentTheme.colorScheme.background,
              elevation: 0,
              underline:
                  const Divider(color: Colors.orange, thickness: 1, height: 1),
              iconEnabledColor: Colors.orange,
              items: [
                for (int i = 0; i < Categories.values.length; i++)
                  DropdownMenuItem<String>(
                      value: Categories.values[i].name,
                      child: Text(Categories.values[i].name)),
              ],
              onChanged: (name) {
                setState(() {
                  myFilterCategory = name;
                });

                myItems.retainWhere(
                    (element) => element.categorise.name == myFilterCategory);
              },
            ),
          ),
          ListTile(
            title: DropdownButton<String>(
              borderRadius: BorderRadius.circular(50),
              hint: Text(
                'Filter by Calorie',
                style: widget.curentTheme.textTheme.titleMedium!
                    .copyWith(color: Colors.orange),
              ),
              isExpanded: true,
              style: widget.curentTheme.textTheme.titleMedium!
                  .copyWith(color: Colors.orange),
              dropdownColor: widget.curentTheme.colorScheme.background,
              elevation: 0,
              underline:
                  const Divider(color: Colors.orange, thickness: 1, height: 1),
              iconEnabledColor: Colors.orange,
              items: [
                for (int i = 0; i < Categories.values.length; i++)
                  DropdownMenuItem<String>(
                      value: Categories.values[i].name,
                      child: Text(Categories.values[i].name)),
              ],
              onChanged: (name) {
                myFilterCategory = name;
                myItems = mymy;
              },
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (contex) => const HomeScreen(),
                    ));
              },
              child: const Text('data')),
          TextButton(onPressed: () {}, child: const Text('data')),
        ],
      ),
    );
  }
}
