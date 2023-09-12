import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  textTheme: TextTheme(
    titleLarge: GoogleFonts.lobster(
      fontSize: 50,
      color: Colors.white,
    ),
    titleMedium: GoogleFonts.lobster(
      fontSize: 26,
      color: Colors.white,
    ),
    titleSmall: GoogleFonts.lobster(
      fontSize: 18,
      color: Colors.white,
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.black,
  ),
  appBarTheme: AppBarTheme(
    actionsIconTheme: const IconThemeData(color: Colors.black),
    titleTextStyle: GoogleFonts.lobster(
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
  textTheme: TextTheme(
    titleLarge: GoogleFonts.lobster(
      fontSize: 50,
      color: Colors.black,
    ),
    titleMedium: GoogleFonts.lobster(
      fontSize: 26,
      color: Colors.black,
    ),
    titleSmall: GoogleFonts.lobster(
      fontSize: 18,
      color: Colors.black,
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: GoogleFonts.lobster(
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
