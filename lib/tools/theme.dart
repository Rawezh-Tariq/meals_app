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
    background: Colors.black12,
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
    backgroundColor: Colors.black12,
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
);
