import 'package:flutter/material.dart';
import 'package:meals_app/screens/bottom_navigator_screen.dart';
import 'package:meals_app/screens/drawer_screen.dart';
import 'package:meals_app/screens/item_screen.dart';
import 'package:meals_app/tools/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ThemeData curentTheme = myLightTheme;
  void changeTheme() {
    setState(() {
      curentTheme = curentTheme == myLightTheme ? myDarkTheme : myLightTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: curentTheme.appBarTheme.titleTextStyle,
        iconTheme: curentTheme.appBarTheme.actionsIconTheme,
        title: const Text(
          'welcome',
        ),
        actions: [
          IconButton(
            onPressed: changeTheme,
            icon: const Icon(
              Icons.sunny,
            ),
          ),
        ],
      ),
      backgroundColor: curentTheme.colorScheme.background,
      drawer: DrawerScreen(curentTheme: curentTheme),
      body: ItemScreen(curentTheme: curentTheme),
      bottomNavigationBar: BottomNavigatorScreen(curentTheme: curentTheme),
    );
  }
}
