enum Categories { meat, vegtable, fastfood, drinks, swets }

class Item {
  String name;
  String image;
  String instructions;
  String ingredients;
  Categories categorise;

  Item(this.name, this.image, this.categorise, this.instructions,
      this.ingredients);
}

List<Item> myItems = [
  Item(
      'kabab',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.meat,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Item(
      'falafl',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.fastfood,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Item(
      'chickn',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.meat,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Item(
      'water',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.drinks,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Item(
      'pitza',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.fastfood,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Item(
      'milk',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.drinks,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Item(
      'cake',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.swets,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Item(
      'salad',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.vegtable,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Item(
      'jgar',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.meat,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Item(
      'trshyat',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.vegtable,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
];
