enum Categories { meet, vegtable, fastfood, drinks, swets }

class Items {
  String name;
  String image;
  String descreption;
  Categories categorise;

  Items(this.name, this.image, this.categorise, this.descreption);
}

List<Items> myItems = [
  Items(
      'kabab',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.meet,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck'),
  Items(
      'falafl',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.fastfood,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck'),
  Items(
      'chickn',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.meet,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck'),
  Items(
      'water',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.drinks,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck'),
  Items(
      'pitza',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.fastfood,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck'),
  Items(
      'milk',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.drinks,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck'),
  Items(
      'cake',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.swets,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck'),
  Items(
      'salad',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.vegtable,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck'),
  Items(
      'jgar',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.meet,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck'),
  Items(
      'trshyat',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHgPeNPCI--cVJw44hPzLYMGzANcokDTexNw&usqp=CAU',
      Categories.vegtable,
      'bdhabfhba ahcbkabc akbchbad  a,jskja ,ankfbqc ,jbcka c lakj kajbkanc ,a jbka s ahbck'),
];
