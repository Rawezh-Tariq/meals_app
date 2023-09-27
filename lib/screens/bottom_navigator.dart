import 'package:flutter/material.dart';
import 'package:meals_app/models/items.dart';
import 'package:meals_app/tools/my_data.dart';
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
      currentIndex: currentIndex,
      onTap: (newIndex) {
        currentIndex = newIndex;

        if (currentIndex == 0) {
          Navigator.popUntil(context, (route) => route.isFirst);
        } else if (currentIndex == 1 && currentScreen != 'Favorites') {
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
