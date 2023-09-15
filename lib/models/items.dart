enum Categories { meet, vegtable, fastfood, drinks, swets }

class Items {
  String name;
  String image;
  Categories categorise;

  Items(this.name, this.image, this.categorise);
}

List<Items> myItems = [
  Items(
    'kabab',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.meet,
  ),
  Items(
    'falafl',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.fastfood,
  ),
  Items(
    'chickn',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.meet,
  ),
  Items(
    'pitza',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.fastfood,
  ),
  Items(
    'water',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.drinks,
  ),
  Items(
    'milk',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.drinks,
  ),
  Items(
    'cake',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.swets,
  ),
  Items(
    'salad',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.vegtable,
  ),
  Items(
    'jgar',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.meet,
  ),
  Items(
    'trshyat',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.vegtable,
  ),
];
