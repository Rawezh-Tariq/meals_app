import 'package:flutter/material.dart';

import 'package:meals_app/screens/bottom_navigator_screen.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({
    super.key,
    required this.name,
    required this.image,
    required this.curentTheme,
    required this.descreption,
  });
  final ThemeData curentTheme;
  final String name;
  final String image;
  final String descreption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: curentTheme.colorScheme.background,
      appBar: AppBar(
        title: const Text('Welcome'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            name,
            style: curentTheme.textTheme.titleLarge,
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Image.network(image, fit: BoxFit.fill),
          ),
          Text(
            descreption,
            style: curentTheme.textTheme.titleMedium,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigatorScreen(curentTheme: curentTheme),
    );
  }
}
