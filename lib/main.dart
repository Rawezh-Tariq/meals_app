import 'package:flutter/material.dart';
import 'package:meals_app/screens/bottom_navigator_screen.dart';
import 'package:meals_app/screens/drawer_screen.dart';
import 'package:meals_app/screens/home_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
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
        title: const Text('welcome'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sunny),
          ),
        ],
      ),
      drawer: const DrawerScreen(),
      body: const HomeScreen(),
      bottomNavigationBar: const BottomNavigatorScreen(),
    );
  }
}
