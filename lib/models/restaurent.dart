import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'food.dart';
import 'my_cart.dart';

class Restaurent extends ChangeNotifier{
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Bison Burger",
      description: " a classic cheese Bison Burger with full of cheese and with leafy vegetables",
      imagePath: "assets/images/burgers/bison_burgers.jpg",
      foodCategories: FoodCategories.burgers,
      price: 25.5,
      addOn: [
        AddOn(name: "Bacoon", price: 2.1),
        AddOn(name: "Extra Cheese", price: .58),
        AddOn(name: "Avacode", price: 3.21),
      ]
    ),
    Food(
      name: "Black Bean Burger",
      description: " a Black Bean Burger with full of cheese and with leafy vegetables",
      imagePath: "assets/images/burgers/black_bean_burger.jpg",
      foodCategories: FoodCategories.burgers,
      price: 25.5,
      addOn: [
        AddOn(name: "Bacoon", price: 2.1),
        AddOn(name: "Extra Cheese", price: .58),
        AddOn(name: "Avacode", price: 3.21),
      ]
    ),
    Food(
      name: "Salmon Burger",
      description: " a Salmon Burger with full of cheese and with leafy vegetables",
      imagePath: "assets/images/burgers/salmon_burger.jpg",
      foodCategories: FoodCategories.burgers,
      price: 25.5,
      addOn: [
        AddOn(name: "Bacoon", price: 2.1),
        AddOn(name: "Extra Cheese", price: .58),
        AddOn(name: "Avacode", price: 3.21),
      ]
    ),
    Food(
      name: "Shack Burger",
      description: " a Shack Burger with full of cheese and with leafy vegetables",
      imagePath: "assets/images/burgers/shack_burger.jpg",
      foodCategories: FoodCategories.burgers,
      price: 25.5,
      addOn: [
        AddOn(name: "Bacoon", price: 2.1),
        AddOn(name: "Extra Cheese", price: .58),
        AddOn(name: "Avacode", price: 3.21),
      ]
    ),
    Food(
      name: "Shack Burger",
      description: " a Shack Burger with full of cheese and with leafy vegetables",
      imagePath: "assets/images/burgers/shack_burger.jpg",
      foodCategories: FoodCategories.burgers,
      price: 25.5,
      addOn: [
        AddOn(name: "Bacoon", price: 2.1),
        AddOn(name: "Extra Cheese", price: .58),
        AddOn(name: "Avacode", price: 3.21),
      ]
    ),
    // Food(
    //   name: "Veggie Burger",
    //   description: " a Veggie Burger with full of cheese and with leafy vegetables",
    //   imagePath: "assets/images/burgers/veggie_burger.jpg",
    //   foodCategories: FoodCategories.burgers,
    //   price: 25.5,
    //   addOn: [
    //     AddOn(name: "Bacoon", price: 2.1),
    //     AddOn(name: "Extra Cheese", price: .58),
    //     AddOn(name: "Avacode", price: 3.21),
    //   ]
    // ),


    // salads
    Food(
      name: "Greek Salad",
      description: " a Greek Salad with full of cheese and with leafy vegetables",
      imagePath: "assets/images/salads/greek_salad.jpg",
      foodCategories: FoodCategories.salads,
      price: 25.5,
      addOn: [
        AddOn(name: "Bacoon", price: 2.1),
        AddOn(name: "Extra Cheese", price: .58),
        AddOn(name: "Avacode", price: 3.21),
      ]
    ),
    Food(
      name: "Ghanaian Salad",
      description: "Ghanaian Salad with full of cheese and with leafy vegetables",
      imagePath: "assets/images/salads/ghanaian_salad.jpg",
      foodCategories: FoodCategories.salads,
      price: 25.5,
      addOn: [
        AddOn(name: "Bacoon", price: 2.1),
        AddOn(name: "Extra Cheese", price: .58),
        AddOn(name: "Avacode", price: 3.21),
      ]
    ),
    Food(
      name: "Green Salad",
      description: " a Green Salad with full of cheese and with leafy vegetables",
      imagePath: "assets/images/salads/green_salad.jpg",
      foodCategories: FoodCategories.salads,
      price: 25.5,
      addOn: [
        AddOn(name: "Bacoon", price: 2.1),
        AddOn(name: "Extra Cheese", price: .58),
        AddOn(name: "Avacode", price: 3.21),
      ]
    ),
    Food(
      name: "Grilled Corn Salad",
      description: "a Grilled Corn Salad with full of cheese and with leafy vegetables",
      imagePath: "assets/images/salads/grilled_corn_salad.jpg",
      foodCategories: FoodCategories.salads,
      price: 25.5,
      addOn: [
        AddOn(name: "Bacoon", price: 2.1),
        AddOn(name: "Extra Cheese", price: .58),
        AddOn(name: "Avacode", price: 3.21),
      ]
    ),
    Food(
      name: "Mixed Salad",
      description: " a Mixed Salad with full of cheese and with leafy vegetables",
      imagePath: "assets/images/salads/mixed_salad.jpg",
      foodCategories: FoodCategories.salads,
      price: 25.5,
      addOn: [
        AddOn(name: "Bacoon", price: 2.1),
        AddOn(name: "Extra Cheese", price: .58),
        AddOn(name: "Avacode", price: 3.21),
      ]
    ),


    // drinks
    Food(
      name: "Budwiser Strong",
      description: "Budwiser Strong",
      imagePath: "assets/images/drinks/budwiser.jpg",
      foodCategories: FoodCategories.drinks,
      price: 25.5,
      addOn: [
        
      ]
    ),
    Food(
      name: "Cocktail",
      description: "a Cocktail with coke drink",
      imagePath: "assets/images/drinks/cocktail.jpg",
      foodCategories: FoodCategories.drinks,
      price: 25.5,
      addOn: [
        
      ]
    ),
    Food(
      name: "Coke",
      description: "Coke Drink",
      imagePath: "assets/images/drinks/coke.jpg",
      foodCategories: FoodCategories.drinks,
      price: 25.5,
      addOn: [
        
      ]
    ),
    Food(
      name: "Red Bull",
      description: "an Energy drink refreshes you to the bull",
      imagePath: "assets/images/drinks/red_bull.jpg",
      foodCategories: FoodCategories.drinks,
      price: 25.5,
      addOn: [
        
      ]
    ),
    Food(
      name: "Sprite",
      description: "A Soft drink",
      imagePath: "assets/images/drinks/sprite.jpg",
      foodCategories: FoodCategories.drinks,
      price: 25.5,
      addOn: [
        
      ]
    ),
  ];




  /* G E T T E R S*/
  List<Food> get menu => _menu;
  List<Cart> get cart => _cart;

  /*
  ------------------- O P E R A T I O N S ------------------
    * add to cart
    * remove from cart
    * get total price of a cart
    * get total no. items in a cart
    * clear cart

   */

  // user cart
  final List<Cart> _cart = [];

  // add to cart
  void addToCart(Food food, List<AddOn> selectedAddOns){
    Cart? cart = _cart.firstWhereOrNull((item){
      // check if the food items are same
      bool isSameFood = item.food == food;
      // check if the list of addons aret the same
      bool isSameAddOns = ListEquality().equals(item.addOn, selectedAddOns);
      return isSameFood && isSameAddOns;
    });

    // if item already exists, increase its quantity
    if (cart != null){
      cart.quantity++;
    }

    //otherwise add a new cart item to the cart
    else{
      _cart.add(Cart(food: food, addOn: selectedAddOns));
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Cart cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if (cartItem != -1){
      if (_cart[cartIndex] != -1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice(){
    double totalPrice = 0.0;

    for (Cart cart in _cart){
      double itemTotal = cart.food.price;

      for (AddOn addOn in cart.addOn){
        itemTotal+= addOn.price;
      }

      totalPrice += itemTotal * cart.quantity;
    }
    return totalPrice;
  }

  // get total no. of items in cart
  int noOfItemsInCart(){
    int totalItemCount = 0;
    for(Cart cartItem in _cart){
      totalItemCount +=cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }
}