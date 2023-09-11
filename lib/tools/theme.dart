import 'package:flutter/material.dart';

ThemeData myDarkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.orange,
    onPrimary: Colors.white,
    secondary: Colors.orange,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.black,
    onBackground: Colors.orange,
    surface: Colors.orange,
    onSurface: Colors.black,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 50,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 26,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      color: Colors.white,
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.black,
  ),
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 50,
    ),
    centerTitle: true,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    unselectedItemColor: Colors.orange,
    selectedItemColor: Colors.deepOrangeAccent,
  ),
);

ThemeData myLightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.orange,
    onPrimary: Colors.white,
    secondary: Colors.orange,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.orange,
    surface: Colors.orange,
    onSurface: Colors.white,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 50,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 26,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      color: Colors.black,
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 50,
    ),
    centerTitle: true,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    unselectedItemColor: Colors.orange,
    selectedItemColor: Colors.deepOrangeAccent,
  ),
);
