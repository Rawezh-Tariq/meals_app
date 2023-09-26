import 'package:flutter/material.dart';
import 'package:meals_app/models/items.dart';
import 'package:meals_app/screens/favorite_screen.dart';

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
      selectedItemColor: curentTheme.bottomNavigationBarTheme.selectedItemColor,
      currentIndex: currentIndex,
      onTap: (currentIndex) {
        currentIndex = currentIndex;

        if (currentIndex == 0 && currentScreen != 'home') {
          Navigator.popUntil(context, (route) => route.isFirst);
        } else if (currentIndex == 1 && currentScreen != 'favorite') {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            List<Item> myFavorites = myItems
                .where((element) => element.isItFavorite == true)
                .toList();

            return FavoriteScreen(
              curentTheme: curentTheme,
              myFavorites: myFavorites,
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
      ],
    );
  }
}
