enum Categories { meat, vegtable, fastfood, drinks, swets }

class Items {
  String name;
  String image;
  String instructions;
  String ingredients;
  Categories categorise;

  Items(this.name, this.image, this.categorise, this.instructions,
      this.ingredients);
}

List<Items> myItems = [
  Items(
      'kabab',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.meat,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Items(
      'falafl',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.fastfood,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Items(
      'chickn',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.meat,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Items(
      'water',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.drinks,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Items(
      'pitza',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.fastfood,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Items(
      'milk',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.drinks,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Items(
      'cake',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.swets,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Items(
      'salad',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.vegtable,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Items(
      'jgar',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.meat,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
  Items(
      'trshyat',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.vegtable,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck',
      'hbfkh-jhfbhd-jhfbha-jhdfhaf-jahbfhaf-jahdfbiaf-jhf'),
];
