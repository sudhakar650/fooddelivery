import 'package:flutter/material.dart';

import '../models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function() onTap;
  const FoodTile({
    super.key,
    required this.food,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Row(
              children:[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        food.name,
                        style: const TextStyle(
                          // color: Theme.of(context).colorScheme.primary
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1
                        )
                      ),
                      Text("\$ ${food.price.toString()}",
                        style:TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      Text(food.description, style:TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
                      // Text(food.foodCategories.toString())
                    ]
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(food.imagePath, height: 120,)
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }
}