import 'package:flutter/material.dart';
import 'package:meals_app/models/items.dart';
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
              height: 260,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Categories.values[i].name,
                      style: curentTheme.textTheme.titleLarge!
                          .copyWith(color: Colors.orange),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myItems
                          .where((element) =>
                              element.categorise.name ==
                              Categories.values[i].name)
                          .length,
                      itemBuilder: (context, index) {
                        final myFilteredItems = myItems
                            .where((element) =>
                                element.categorise.name ==
                                Categories.values[i].name)
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
                                  index: index,
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
                                        width: 3, color: Colors.orange),
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
                                style: curentTheme.textTheme.titleSmall!
                                    .copyWith(color: Colors.orange),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(color: Colors.orange, thickness: 3),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
