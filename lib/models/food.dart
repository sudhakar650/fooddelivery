// food item
class Food{
  final String name;                    // cheese burger
  final String description;             // a cheese burger with full of cheese
  final String imagePath;               // lib/assets/images/burgers/cheese_burger.png
  final double price;                   // 4.30
  final FoodCategories foodCategories;  // burger
  final List<AddOn> addOn;              // [extra cheese, sauce]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.foodCategories,
    required this.addOn
  });
}


// enum food categories
enum FoodCategories{
  burgers, salads, drinks
}

class AddOn{
  final String name;
  final double price;

  AddOn({
    required this.name,
    required this.price
  });
}