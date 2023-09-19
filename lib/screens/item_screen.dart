import 'package:flutter/material.dart';
import 'package:meals_app/models/items.dart';

import 'package:meals_app/screens/bottom_navigator_screen.dart';

List myFavorites = [];

class ItemScreen extends StatelessWidget {
  const ItemScreen({
    super.key,
    this.name = '',
    this.image = '',
    required this.curentTheme,
    this.instructions = '',
    this.ingredients = '',
    this.category = Categories.meat,
    this.index = 0,
  });
  final ThemeData curentTheme;
  final String name;
  final String image;
  final Categories category;
  final String ingredients;
  final String instructions;
  final int index;

  @override
  Widget build(BuildContext context) {
    bool isitmyFav = false;

    void isFave() {
      isitmyFav == true ? isitmyFav = false : isitmyFav = true;
      if (isitmyFav == true) {
        myFavorites.add(Item(name, image, category, instructions, ingredients));
      } else {
        myFavorites.removeWhere(
          (item) {
            item.name == item.name;

            return true;
          },
        );
      }
    }

    return Scaffold(
      backgroundColor: curentTheme.colorScheme.background,
      appBar: AppBar(
        titleTextStyle: curentTheme.appBarTheme.titleTextStyle,
        iconTheme: curentTheme.appBarTheme.actionsIconTheme,
        title: const Text('Welcome'),
        actions: [
          IconButton(
            onPressed: isFave,
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 3, right: 3),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: Colors.orange,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.orange),
                    borderRadius: BorderRadius.circular(55),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(image,
                        width: 120, height: 100, fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  textAlign: TextAlign.center,
                  'Name : $name',
                  style: curentTheme.textTheme.titleLarge!
                      .copyWith(color: Colors.orange),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Catigory : ${category.name}',
                  style: curentTheme.textTheme.titleMedium!
                      .copyWith(color: Colors.orange),
                ),
                const SizedBox(height: 20),
                const Divider(color: Colors.orange, thickness: 1),
                Text(
                  textAlign: TextAlign.center,
                  'Ingredients : $ingredients',
                  style: curentTheme.textTheme.titleMedium!
                      .copyWith(color: Colors.orange),
                ),
                const SizedBox(height: 20),
                const Divider(color: Colors.orange, thickness: 1),
                Text(
                  textAlign: TextAlign.center,
                  'Instructions : $instructions',
                  style: curentTheme.textTheme.titleMedium!
                      .copyWith(color: Colors.orange),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigatorScreen(
        curentTheme: curentTheme,
        currentScreen: 'item',
      ),
    );
  }
}
