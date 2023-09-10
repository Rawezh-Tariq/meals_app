import 'package:flutter/material.dart';
import 'package:meals_app/screens/bottom_navigator_screen.dart';
import 'package:meals_app/screens/drawer_screen.dart';
import 'package:meals_app/screens/home_screen.dart';
import 'package:meals_app/tools/theme.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  ThemeData curentTheme = myLightTheme;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: curentTheme,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'welcome',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (curentTheme == myLightTheme) {
                    curentTheme = myDarkTheme;
                  } else {
                    curentTheme = myLightTheme;
                  }
                });
              },
              icon: const Icon(
                Icons.sunny,
              ),
            ),
          ],
        ),
        drawer: const DrawerScreen(),
        body: const HomeScreen(),
        bottomNavigationBar: const BottomNavigatorScreen(),
      ),
    );
  }
}
