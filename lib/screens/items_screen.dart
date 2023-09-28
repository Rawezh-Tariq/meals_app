import 'package:flutter/material.dart';
import 'package:meals_app/models/items.dart';
import 'package:meals_app/tools/my_data.dart';
import 'package:meals_app/screens/item_screen.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({
    super.key,
    required this.curentTheme,
  });
  final ThemeData curentTheme;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i < Categories.values.length; i++)
            SizedBox(
              height: 280,
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    Categories.values[i].name,
                    style: curentTheme.textTheme.titleLarge,
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myItems
                          .where((element) =>
                              element.categorise.name ==
                                  Categories.values[i].name &&
                              element.isFiltered == true)
                          .length,
                      itemBuilder: (context, index) {
                        final myFilteredItems = myItems
                            .where((element) =>
                                element.categorise.name ==
                                    Categories.values[i].name &&
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
                                      width: 2,
                                      color: curentTheme.colorScheme.primary,
                                    ),
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
                              SizedBox(
                                width: 100,
                                child: Text(
                                  myFilteredItems[index].name,
                                  style: curentTheme.textTheme.titleSmall,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(color: curentTheme.colorScheme.primary, thickness: 3),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
