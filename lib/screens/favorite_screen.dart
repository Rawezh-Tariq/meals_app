import 'package:flutter/material.dart';
import 'package:meals_app/models/items.dart';

import 'package:meals_app/screens/bottom_navigator.dart';
import 'package:meals_app/screens/item_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({
    super.key,
    required this.curentTheme,
    required this.myFavorites,
  });
  final ThemeData curentTheme;
  final List<Item> myFavorites;

  @override
  Widget build(BuildContext context) {
    String screen = 'Favorites';
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < Categories.values.length; i++)
              SizedBox(
                height: 260,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        Categories.values[i].name,
                        style: curentTheme.textTheme.titleLarge,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: myFavorites
                            .where((element) =>
                                element.categorise.name ==
                                    Categories.values[i].name &&
                                element.isItFavorite == true &&
                                element.isFiltered == true)
                            .length,
                        itemBuilder: (context, index) {
                          final myFilteredItems = myFavorites
                              .where((element) =>
                                  element.categorise.name ==
                                      Categories.values[i].name &&
                                  element.isItFavorite == true &&
                                  element.isFiltered == true)
                              .toList();

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ItemScreen(
                                    curentTheme: curentTheme,
                                    name: myFilteredItems[index].name,
                                    image: myFilteredItems[index].image,
                                    instructions:
                                        myFilteredItems[index].instructions,
                                    ingredients:
                                        myFilteredItems[index].ingredients,
                                    category: myFilteredItems[index].categorise,
                                    id: myFilteredItems[index].id,
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 3,
                                          color:
                                              curentTheme.colorScheme.primary),
                                      borderRadius: BorderRadius.circular(55),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.network(
                                        myFilteredItems[index].image,
                                        width: 120,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  myFilteredItems[index].name,
                                  style: curentTheme.textTheme.titleSmall,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Divider(
                        color: curentTheme.colorScheme.primary, thickness: 3),
                  ],
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigatorScreen(
        curentTheme: curentTheme,
        currentScreen: screen,
      ),
    );
  }
}
