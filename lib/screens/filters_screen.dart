import 'package:flutter/material.dart';
import 'package:meals_app/screens/bottom_navigator_screen.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key, required this.curentTheme});
  final ThemeData curentTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: curentTheme.colorScheme.background,
      appBar: AppBar(
        titleTextStyle: curentTheme.appBarTheme.titleTextStyle,
        iconTheme: curentTheme.appBarTheme.actionsIconTheme,
        title: Text(
          'welcome',
          style: curentTheme.appBarTheme.titleTextStyle,
        ),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigatorScreen(
          curentTheme: curentTheme, currentScreen: 'filters'),
    );
  }
}
