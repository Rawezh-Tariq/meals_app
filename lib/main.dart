import 'package:flutter/material.dart';

import 'package:meals_app/screens/home_screen.dart';
import 'package:meals_app/tools/theme.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myLightTheme,
      darkTheme: myDarkTheme,
      home: HomeScreen(currentScreen: 'home', curentTheme: myLightTheme),
    );
  }
}
