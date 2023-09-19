import 'package:flutter/material.dart';

import 'package:meals_app/screens/bottom_navigator_screen.dart';
import 'package:meals_app/screens/item_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({
    super.key,
    required this.curentTheme,
  });
  final ThemeData curentTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: curentTheme.colorScheme.background,
      appBar: AppBar(
        title: const Text('welcome'),
      ),
      body: Column(
        children: [
          Text(myFavorites[0].toString()),
        ],
      ),
      bottomNavigationBar: BottomNavigatorScreen(
        curentTheme: curentTheme,
        currentScreen: 'favorite',
      ),
    );
  }
}
