
import 'package:flutsnack/model/snack_category.dart';

class LocalFlutsnackDataProvider {

  static SnackCategory chipsAndCrackers = SnackCategory(
      name: "Chips & crackers",
      imagePath: "assets/images/chips.jpg",
      tagline: "Crispy and satisfying with every bite."
  );

  static SnackCategory fruitSnacks = SnackCategory(
      name: "Fruit snacks",
      imagePath: "assets/images/fruit.jpg",
      tagline: "A sweet and healthy burst of fruity goodness."
  );

  static SnackCategory desserts = SnackCategory(
      name: "Desserts",
      imagePath: "assets/images/desserts.jpg",
      tagline: "Indulge your sweet tooth with every bite."
  );

  static SnackCategory nuts = SnackCategory(
      name: "Nuts",
      imagePath: "assets/images/nuts.jpg",
      tagline: "Crunchy, nutritious, and full of energy."
  );

  static SnackCategory organic = SnackCategory(
      name: "Organic",
      imagePath: "assets/images/organic.jpg",
      tagline: "Wholesome snacks grown the natural way."
  );

  static SnackCategory glutenFree = SnackCategory(
      name: "Gluten free",
      imagePath: "assets/images/smoothies.jpg",
      tagline: "Delicious without the gluten, perfect for everyone."
  );

  static SnackCategory paleo = SnackCategory(
      name: "Paleo",
      imagePath: "assets/images/paleo.jpg",
      tagline: "Back to basics with pure, primal nutrition."
  );

  static SnackCategory vegan = SnackCategory(
      name: "Vegan",
      imagePath: "assets/images/vegan.jpg",
      tagline: "Plant-based goodness for conscious snackers."
  );

  static SnackCategory cupcake = SnackCategory(
      name: "Cupcake",
      imagePath: "assets/images/cupcake.jpg",
      tagline: "Tiny, tasty treats with big flavor."
  );

  static SnackCategory donut = SnackCategory(
      name: "Donut",
      imagePath: "assets/images/donut.jpg",
      tagline: "Sweet rings of happiness in every bite."
  );

  static SnackCategory eclair = SnackCategory(
      name: "Eclair",
      imagePath: "assets/images/eclair.jpg",
      tagline: "Elegant pastries filled with creamy delight."
  );

  static SnackCategory froyo = SnackCategory(
      name: "Froyo",
      imagePath: "assets/images/froyo.jpg",
      tagline: "Chilled, creamy, and irresistibly refreshing."
  );

  static SnackCategory gingerbread = SnackCategory(
      name: "Gingerbread",
      imagePath: "assets/images/gingerbread.jpg",
      tagline: "Spiced and warm, a classic holiday treat."
  );

  static SnackCategory honeycomb = SnackCategory(
      name: "Honeycomb",
      imagePath: "assets/images/honeycomb.jpg",
      tagline: "Sweet, crunchy, and golden goodness."
  );

  static SnackCategory iceCreamSandwich = SnackCategory(
      name: "Ice cream sandwich",
      imagePath: "assets/images/ice_cream_sandwich.jpg",
      tagline: "Cool ice cream between soft, sweet layers."
  );

  static SnackCategory jellyBean = SnackCategory(
      name: "Jelly bean",
      imagePath: "assets/images/jelly_bean.jpg",
      tagline: "Tiny treats packed with huge flavor."
  );

  static SnackCategory kitkat = SnackCategory(
      name: "Kitkat",
      imagePath: "assets/images/kitkat.jpg",
      tagline: "Take a break with crispy, chocolatey joy."
  );

  static SnackCategory lollipop = SnackCategory(
      name: "Lollipop",
      imagePath: "assets/images/lollipop.jpg",
      tagline: "A pop of sweetness on a stick."
  );

  static SnackCategory marshmallow = SnackCategory(
      name: "Marshmallow",
      imagePath: "assets/images/marshmallow.jpg",
      tagline: "Soft, fluffy, and melts in your mouth."
  );

  static SnackCategory nougat = SnackCategory(
      name: "Nougat",
      imagePath: "assets/images/nougat.jpg",
      tagline: "Chewy, nutty, and satisfyingly sweet."
  );

  static SnackCategory oreo = SnackCategory(
      name: "Oreo",
      imagePath: "assets/images/oreo.jpg",
      tagline: "Twist, lick, dunk - it's a classic."
  );

  static SnackCategory pie = SnackCategory(
      name: "Pie",
      imagePath: "assets/images/pie.jpg",
      tagline: "Filled with love and baked to perfection."
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

  static List<SnackCategory> androidPick = [
    LocalFlutsnackDataProvider.cupcake,
    LocalFlutsnackDataProvider.donut,
    LocalFlutsnackDataProvider.eclair,
    LocalFlutsnackDataProvider.froyo,
    LocalFlutsnackDataProvider.gingerbread,
    LocalFlutsnackDataProvider.honeycomb,
    LocalFlutsnackDataProvider.iceCreamSandwich,
    LocalFlutsnackDataProvider.jellyBean,
    LocalFlutsnackDataProvider.kitkat,
    LocalFlutsnackDataProvider.lollipop,
    LocalFlutsnackDataProvider.marshmallow,
    LocalFlutsnackDataProvider.nougat,
    LocalFlutsnackDataProvider.oreo,
    LocalFlutsnackDataProvider.pie,
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
