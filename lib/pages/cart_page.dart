import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/my_cart_tile.dart';
import '../models/restaurent.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurent>(
      builder: (context, restaurent, child){
        // user cart
        final userCart = restaurent.cart;

        // return UI
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Cart'),
          ),

          body: Column(
            children:[
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    // get the individual cart item
                    final cartItem = userCart[index];
                    return MyCartTile(cartItem: cartItem);
                  }
                )
              )
            ]
          )
        );

      });
  }
}