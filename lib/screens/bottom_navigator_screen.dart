import 'package:flutter/material.dart';
import 'package:meals_app/screens/favorite_screen.dart';

import 'package:meals_app/screens/items_screen.dart';

class BottomNavigatorScreen extends StatelessWidget {
  const BottomNavigatorScreen({
    super.key,
    required this.curentTheme,
    required this.currentScreen,
  });
  final ThemeData curentTheme;
  final String currentScreen;

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    return BottomNavigationBar(
      backgroundColor: curentTheme.bottomNavigationBarTheme.backgroundColor,
      unselectedItemColor:
          curentTheme.bottomNavigationBarTheme.unselectedItemColor,
      currentIndex: currentIndex,
      onTap: (currentIndex) {
        currentIndex = currentIndex;

        if (currentIndex == 0 && currentScreen != 'home') {
          Navigator.popUntil(context, (route) => route.isFirst);
        } else if (currentIndex == 1 && currentScreen != 'favorite') {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FavoriteScreen(
              curentTheme: curentTheme,
            );
          }));
        } else if (currentIndex == 2 && currentScreen != 'item') {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ItemsScreen(
              curentTheme: curentTheme,
            );
          }));
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Order',
        ),
      ],
    );
  }
}
