
import 'food.dart';

class Cart{
  Food food;
  List<AddOn> addOn;
  int quantity;

  Cart({
    required this.food,
    required this.addOn,
    this.quantity = 1
  });

  double get totalPrice{
    double addOnsPrice = addOn.fold(0, (sum, addOn) => sum+addOn.price);
    return (food.price + addOnsPrice) * quantity;
  }
}