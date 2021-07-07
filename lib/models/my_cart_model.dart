class MyCartModel {
  final String id;
  final int index;
  final String asset;
  final String name;
  final String data;
  final String ingredients;
  

  MyCartModel(this.id, this.index, this.asset, this.name, this.data, this.ingredients,);
}

List<MyCartModel> myCartModelList = [
  MyCartModel(
    '1111',
      0,
      'assets/first_healthy_food.jpg',
      'Green Smothie',
      'October, 19 2021',
      "• 2 large celery stalks\n• 1 large bell pepper\n• 1 large baked sweet potato\n• 1 medium baked white potato"),
  MyCartModel(
    '2222',
      1,
      'assets/second_healthy_food.jpg',
      'Pear indgredient',
      'September, 15 2020',
      "• ½ cup of cooked oatmeal, barley, or brown rice\n• 1 slice of whole-wheat bread\n• 3 cups of popped popcorn"),
  MyCartModel(
    '3333',
    2,
    'assets/third_healthy_food.jpg', 'Radish', 'January, 23 2021',
      "• 1 egg\n• ¼ cup of cooked beans or peas\n• 2 tablespoons of hummus\n• 1 tablespoon of peanut butter\n• 1 sandwich slice of turkey\n• 1 ounce of meat, poultry, or seafood"),
  MyCartModel(
    '4444',
    3,
    'assets/forth_healthy_food.jpg', 'Healthy food', 'May, 11 2021',
      "• 1 small apple\n• 32 seedless grapes\n• 1 large orange\n• 8 large strawberries\n• 1 medium pear\n• 1 large peach")
];
