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

List<Item> myItems = [
  Item(
    'kabab',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.meat,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    0,
    false,
  ),
  Item(
    'falafl',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.fastfood,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    1,
    false,
  ),
  Item(
    'chickn',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.meat,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    2,
    false,
  ),
  Item(
    'water',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.drinks,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    3,
    false,
  ),
  Item(
    'pitza',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.fastfood,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    4,
    false,
  ),
  Item(
    'milk',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.drinks,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    5,
    false,
  ),
  Item(
    'cake',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.swets,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    6,
    false,
  ),
  Item(
    'salad',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.vegtable,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    7,
    false,
  ),
  Item(
    'jgar',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.meat,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    8,
    false,
  ),
  Item(
    'trshyat',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
    Categories.vegtable,
    'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
    'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf',
    false,
    9,
    false,
  ),
];
