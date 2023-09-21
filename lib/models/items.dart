enum Categories { meat, fastfood, vegtable, swets, drinks }

class Item {
  String name;
  String image;
  String instructions;
  String ingredients;
  Categories categorise;
  bool isItFavorite;
  int id;

  Item(
    this.name,
    this.image,
    this.categorise,
    this.instructions,
    this.ingredients,
    this.isItFavorite,
    this.id,
  );
}

List<Item> myItems = [
  Item(
    'kabab',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.meat,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    0,
  ),
  Item(
    'falafl',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.fastfood,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    1,
  ),
  Item(
    'chickn',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.meat,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    2,
  ),
  Item(
    'water',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.drinks,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    3,
  ),
  Item(
    'pitza',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.fastfood,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    4,
  ),
  Item(
    'milk',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.drinks,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    5,
  ),
  Item(
    'cake',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.swets,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    6,
  ),
  Item(
    'salad',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.vegtable,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    7,
  ),
  Item(
    'jgar',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.meat,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    8,
  ),
  Item(
    'trshyat',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.vegtable,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    9,
  ),
];
