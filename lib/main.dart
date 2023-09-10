import 'package:flutter/material.dart';
import 'package:meals_app/screens/bottom_navigator_screen.dart';
import 'package:meals_app/screens/drawer_screen.dart';
import 'package:meals_app/screens/home_screen.dart';
import 'package:meals_app/tools/theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myDarkTheme,
      home: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'welcome',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sunny, color: Theme.of(context).iconTheme.color),
          ),
        ],
      ),
      drawer: const DrawerScreen(),
      body: const HomeScreen(),
      bottomNavigationBar: const BottomNavigatorScreen(),
    );
  }
}
