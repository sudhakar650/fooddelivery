import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/mu_button.dart';
import '../models/food.dart';
import '../models/restaurent.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<AddOn, bool> selectedAddOn = {};
  FoodPage({
    super.key,
    required this.food
  }){
    // initialise the addOns to false
    for (AddOn addOn in food.addOn){
      selectedAddOn[addOn] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: ListView(
            children:[
              Image.asset(
                widget.food.imagePath,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height:10),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // food name
                    Text(
                      widget.food.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                
                    Text(
                      '\$${widget.food.price}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary
                      ),
                    ),

                    const SizedBox(height:10),

                    // description
                    Text(
                      widget.food.description,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height:10),
                    Divider(
                      
                    ),
                    const SizedBox(height:10),
                    const Text("Add-Ons"),
                    const SizedBox(height:10),
                    Container(
                      decoration:BoxDecoration(
                        border: Border.all(color: Theme.of(context).colorScheme.secondary),
                        borderRadius: BorderRadius.circular(15)
                      ) ,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.food.addOn.length,
                        itemBuilder: (context, index) {
                          final AddOn addOn = widget.food.addOn[index];
                          return CheckboxListTile(
                            title: Text(addOn.name),
                            subtitle: Text('\$${addOn.price}'),
                            value: widget.selectedAddOn[addOn],
                            onChanged: (bool? value){
                              setState(() {
                                widget.selectedAddOn[addOn] = value!;
                              });
                            }
                          );
                        }
                      ),
                    ),
                    const SizedBox(height:10),
                    MyButton(
                      onPressed: ()=> _addToCart(widget.food, widget.selectedAddOn),
                      label: "Add to Cart"
                    )
                  ],
                ),
              )
              // Text(widget.food.addOn),
              // Text(widget.food.name),
          
            ]
          )
        ),
        SafeArea(
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Theme.of(context).colorScheme.secondary,
            )
          )
        )
      ],
    );
  }

  void _addToCart(Food food, Map<AddOn, bool> addOn){

    // close the current food page go to back to menu
    Navigator.pop(context);

    // format the selevcted add ons
    List<AddOn> currentlySelectedAddons = [];
    for (AddOn addOn in widget.food.addOn){
      if (widget.selectedAddOn[addOn] == true){
        currentlySelectedAddons.add(addOn);
      }
    }

    // add to cart
    context.read<Restaurent>().addToCart(food, currentlySelectedAddons);
  }
}