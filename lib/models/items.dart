enum Categories { meat, fastfood, vegtable, swets, drinks }

class Item {
  String name;
  String image;
  String instructions;
  String ingredients;
  Categories categorise;
  bool isItFavorite;
  int id;
  bool isFiltered;

  Item(
    this.name,
    this.image,
    this.categorise,
    this.instructions,
    this.ingredients,
    this.isItFavorite,
    this.id,
    this.isFiltered,
  );
}
