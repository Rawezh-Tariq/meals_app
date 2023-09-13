import 'package:flutter/material.dart';
import 'package:meals_app/models/items.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key, required this.curentTheme});
  final ThemeData curentTheme;

  int itemCount() {
    int length = 0;
    for (int i = 0; i < myItems.length; i++) {
      if (myItems[i].categorise.name == Categories.values[i].name) {
        length++;
      }
    }
    return length;
  }

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
                      itemCount:  ,
                      itemBuilder: (context, index) {
                        for (index;
                            index <
                                myItems
                                    .where((element) =>
                                        myItems[index].categorise.name ==
                                        Categories.values[index].name)
                                    .length;
                            index++) {
                          if (myItems[index].categorise.name ==
                              Categories.values[index].name) {
                            return Column(
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
                                        myItems[index].image,
                                        width: 120,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  myItems[index].name,
                                  style: curentTheme.textTheme.titleSmall!
                                      .copyWith(color: Colors.orange),
                                ),
                              ],
                            );
                          }
                        }
                        return null;
                        // if (myItems[index].categorise == Categories.fastfood) {
                        // return Column(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Container(
                        //         decoration: BoxDecoration(
                        //           border: Border.all(
                        //               width: 3, color: Colors.orange),
                        //           borderRadius: BorderRadius.circular(55),
                        //         ),
                        //         child: ClipRRect(
                        //           borderRadius: BorderRadius.circular(50),
                        //           child: Image.network(
                        //             myItems[i].image,
                        //             width: 120,
                        //             height: 100,
                        //             fit: BoxFit.fill,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Text(
                        //       myItems[i].name,
                        //       style: curentTheme.textTheme.titleSmall!
                        //           .copyWith(color: Colors.orange),
                        //     ),
                        //   ],
                        // );
                        // }
                        // return const SizedBox();
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
