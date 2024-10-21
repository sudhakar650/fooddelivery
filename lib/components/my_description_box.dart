import 'package:flutter/material.dart';

class MuDescriptionBox extends StatelessWidget {
  const MuDescriptionBox({super.key});

  

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary
    );
    var myInversePrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary
    );
    return Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          // delivery fees
          Column(
            children:[
              Text("\$0.99", style: myPrimaryTextStyle,),
              Text("Delivery Fee", style: myInversePrimaryTextStyle,),
            ]
          ),

          // delivery time
          Column(
            children:[
              Text("5-30 min", style: myPrimaryTextStyle),
              Text("Delivery Time", style: myInversePrimaryTextStyle),
            ]
          )
        ]
      )
    );
  }
}