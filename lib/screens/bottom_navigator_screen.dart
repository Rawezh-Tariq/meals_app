import 'package:flutter/material.dart';
import 'package:meals_app/screens/favorite_screen.dart';
import 'package:meals_app/screens/home_screen.dart';

class BottomNavigatorScreen extends StatefulWidget {
  const BottomNavigatorScreen({super.key, required this.curentTheme});
  final ThemeData curentTheme;

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorScreenState();
}

class _BottomNavigatorScreenState extends State<BottomNavigatorScreen> {
  int currentIndex = 0;
  List myScreen = [
    const HomeScreen(),
    const FavoriteScreen(name: 'name'),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor:
          widget.curentTheme.bottomNavigationBarTheme.backgroundColor,
      unselectedItemColor:
          widget.curentTheme.bottomNavigationBarTheme.unselectedItemColor,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => myScreen[index],
            ),
          );
        });
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
