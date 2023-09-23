import 'package:flutter/material.dart';
import 'package:meals_app/models/items.dart';
import 'package:meals_app/screens/home_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key, required this.curentTheme});
  final ThemeData curentTheme;

  @override
  Widget build(BuildContext context) {
    String? myFilterCategory;

    return Drawer(
      backgroundColor: curentTheme.drawerTheme.backgroundColor,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DrawerHeader(
            child: Text('My Filters',
                style: curentTheme.textTheme.titleLarge!
                    .copyWith(color: Colors.orange)),
          ),
          ListTile(
            title: DropdownButton<String>(
              borderRadius: BorderRadius.circular(50),
              hint: Text(
                'Filter by Category',
                style: curentTheme.textTheme.titleMedium!
                    .copyWith(color: Colors.orange),
              ),
              isExpanded: true,
              style: curentTheme.textTheme.titleMedium!
                  .copyWith(color: Colors.orange),
              dropdownColor: curentTheme.colorScheme.background,
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
                style: curentTheme.textTheme.titleMedium!
                    .copyWith(color: Colors.orange),
              ),
              isExpanded: true,
              style: curentTheme.textTheme.titleMedium!
                  .copyWith(color: Colors.orange),
              dropdownColor: curentTheme.colorScheme.background,
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
                myItems.retainWhere(
                    (element) => element.categorise.name == myFilterCategory);
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
