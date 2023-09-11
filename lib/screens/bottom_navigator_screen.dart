import 'package:flutter/material.dart';

class BottomNavigatorScreen extends StatelessWidget {
  const BottomNavigatorScreen({super.key, required this.curentTheme});
  final ThemeData curentTheme;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: curentTheme.bottomNavigationBarTheme.backgroundColor,
      unselectedItemColor:
          curentTheme.bottomNavigationBarTheme.unselectedItemColor,
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
