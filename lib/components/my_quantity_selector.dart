import 'package:flutter/material.dart';
import '../models/food.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onIncrement,
    required this.onDecrement
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50)
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        children:[

          // decrease button
          IconButton(
            onPressed: onDecrement,
            icon: Icon(Icons.remove, color: Theme.of(context).colorScheme.primary,)
          ),

          // quantity count display
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(quantity.toString())
              ),
            ),
          ),

          // increment button
          IconButton(
            onPressed: onIncrement,
            icon: Icon(Icons.add, color: Theme.of(context).colorScheme.primary,)
          )
        ]
      )
    );
  }
}