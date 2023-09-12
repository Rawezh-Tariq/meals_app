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
    'hambergr',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.fastfood,
  ),
  Items(
    'hambergr',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.fastfood,
  ),
  Items(
    'hambergr',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.fastfood,
  ),
  Items(
    'hambergr',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.fastfood,
  ),
];
