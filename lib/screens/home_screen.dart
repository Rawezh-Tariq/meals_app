import 'package:flutter/material.dart';

import 'package:meals_app/screens/bottom_navigator.dart';
import 'package:meals_app/screens/drawer.dart';
import 'package:meals_app/screens/items_screen.dart';
import 'package:meals_app/tools/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    this.currentScreen,
  });
  final String? currentScreen;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String screen = 'Home';
  ThemeData curentTheme = myLightTheme;
  void changeTheme() {
    setState(() {
      curentTheme = curentTheme == myLightTheme ? myDarkTheme : myLightTheme;
    });
  }

  void refreshItemsScreen() {
    setState(() {
      ItemsScreen(curentTheme: curentTheme);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: curentTheme.appBarTheme.titleTextStyle,
        iconTheme: curentTheme.appBarTheme.actionsIconTheme,
        title: Text(
          screen,
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
      drawer: DrawerScreen(
          curentTheme: curentTheme, onCloseDrawer: refreshItemsScreen),
      body: ItemsScreen(
        curentTheme: curentTheme,
      ),
      bottomNavigationBar: BottomNavigatorScreen(
        curentTheme: curentTheme,
        currentScreen: screen,
      ),
    );
  }
}
