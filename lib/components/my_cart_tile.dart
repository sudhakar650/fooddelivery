import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/my_cart.dart';
import '../models/restaurent.dart';
import 'my_quantity_selector.dart';

class MyCartTile extends StatelessWidget {
  final Cart cartItem;
  const MyCartTile({
    super.key,
    required this.cartItem
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurent>(
      builder: (context, restaurent, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary
        ),
        child: Column(
          children: [
            Row(
              children: [
                // food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(cartItem.food.imagePath, width: 100, height: 100)),
                
                // name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(cartItem.food.name),
                    Text('\$'+cartItem.food.price.toString()),
                  ]
                ),

                const Spacer(),

                // increment and decrement buttons
                QuantitySelector(
                  quantity: cartItem.quantity,
                  food: cartItem.food,
                  onIncrement: (){
                    restaurent.addToCart(cartItem.food, cartItem.addOn);
                  },
                  onDecrement: (){
                    restaurent.removeFromCart(cartItem);
                  }
                )
              ]
            ),

            SizedBox(
              height: cartItem.addOn.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(top: 10, left: 10, right:10),
                children: cartItem.addOn.map((addOn) => FilterChip(
                  label: Row(
                    children:[
                      // addon name
                      Text(addOn.name),

                      // addon price
                      Text(addOn.price.toString())
                    ]
                  ),
                  onSelected: (value){
                    
                  },
                  shape: StadiumBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.primary
                    )
                  ),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 12
                  ),

                )).toList(),
              )
            )
          ]
        ),
      ),

    );
  }
}