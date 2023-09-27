import 'package:flutter/material.dart';
import 'package:meals_app/models/items.dart';
import 'package:meals_app/tools/my_data.dart';

import 'package:meals_app/screens/bottom_navigator.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({
    super.key,
    this.name,
    this.image,
    required this.curentTheme,
    this.instructions,
    this.ingredients,
    this.category,
    this.id,
  });
  final ThemeData curentTheme;
  final String? name;
  final String? image;
  final Categories? category;
  final String? ingredients;
  final String? instructions;
  final int? id;

  @override
  Widget build(BuildContext context) {
    String screen = 'Item';
    void isFave() {
      myItems[id!].isItFavorite == false
          ? myItems[id!].isItFavorite = true
          : myItems[id!].isItFavorite = false;
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 236, 158, 48),
          showCloseIcon: true,
          closeIconColor: Colors.white,
          content: myItems[id!].isItFavorite == true
              ? Text(
                  '$name is my Favorite',
                  style: curentTheme.textTheme.titleSmall!.copyWith(
                    color: Colors.white,
                  ),
                )
              : Text(
                  '$name is Not my Favorite',
                  style: curentTheme.textTheme.titleSmall!.copyWith(
                    color: Colors.white,
                  ),
                ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: curentTheme.colorScheme.background,
      appBar: AppBar(
        titleTextStyle: curentTheme.appBarTheme.titleTextStyle,
        iconTheme: curentTheme.appBarTheme.actionsIconTheme,
        title: Text(screen),
        leading: IconButton(
          onPressed: () =>
              Navigator.popUntil(context, (route) => route.isFirst),
          icon: const Icon(Icons.arrow_back),
        ),
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
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 2,
              color: curentTheme.colorScheme.primary,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3, color: curentTheme.colorScheme.primary),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(55),
                    child: Image.network(image!, fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  textAlign: TextAlign.center,
                  'Name : $name',
                  style: curentTheme.textTheme.titleLarge,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Catigory : ${category!.name}',
                  style: curentTheme.textTheme.titleSmall,
                ),
                const SizedBox(height: 20),
                Divider(color: curentTheme.colorScheme.primary, thickness: 1),
                Text(
                  textAlign: TextAlign.center,
                  'Ingredients : $ingredients',
                  style: curentTheme.textTheme.titleSmall,
                ),
                const SizedBox(height: 20),
                Divider(color: curentTheme.colorScheme.primary, thickness: 1),
                Text(
                  textAlign: TextAlign.center,
                  'Instructions : $instructions',
                  style: curentTheme.textTheme.titleSmall,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigatorScreen(
        curentTheme: curentTheme,
        currentScreen: screen,
      ),
    );
  }
}
