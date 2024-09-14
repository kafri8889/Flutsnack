
import 'package:flutsnack/model/snack_category.dart';

class LocalFlutsnackDataProvider {
  
  static SnackCategory chipsAndCrackers = SnackCategory(
      name: "Chips & crackers",
      imagePath: "images/chips.jpg"
  );

  static SnackCategory fruitSnacks = SnackCategory(
      name: "Fruit snacks",
      imagePath: "images/fruit.jpg"
  );

  static SnackCategory desserts = SnackCategory(
      name: "Desserts",
      imagePath: "images/desserts.jpg"
  );

  static SnackCategory nuts = SnackCategory(
      name: "Nuts",
      imagePath: "images/nuts.jpg"
  );

  static SnackCategory organic = SnackCategory(
      name: "Organic",
      imagePath: "images/organic.jpg"
  );

  static SnackCategory glutenFree = SnackCategory(
      name: "Gluten free",
      imagePath: "images/smoothies.jpg"
  );

  static SnackCategory paleo = SnackCategory(
      name: "Paleo",
      imagePath: "images/paleo.jpg"
  );

  static SnackCategory vegan = SnackCategory(
      name: "Vegan",
      imagePath: "images/vegan.jpg"
  );

  static List<SnackCategory> categories = [
    LocalFlutsnackDataProvider.chipsAndCrackers,
    LocalFlutsnackDataProvider.fruitSnacks,
    LocalFlutsnackDataProvider.desserts,
    LocalFlutsnackDataProvider.nuts
  ];

  static List<SnackCategory> lifestyles = [
    LocalFlutsnackDataProvider.organic,
    LocalFlutsnackDataProvider.glutenFree,
    LocalFlutsnackDataProvider.paleo,
    LocalFlutsnackDataProvider.vegan
  ];

  static List<SnackCategory> all = [
    LocalFlutsnackDataProvider.chipsAndCrackers,
    LocalFlutsnackDataProvider.fruitSnacks,
    LocalFlutsnackDataProvider.desserts,
    LocalFlutsnackDataProvider.nuts,
    LocalFlutsnackDataProvider.organic,
    LocalFlutsnackDataProvider.glutenFree,
    LocalFlutsnackDataProvider.paleo,
    LocalFlutsnackDataProvider.vegan
  ];

}
