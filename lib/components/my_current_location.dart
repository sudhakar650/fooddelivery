import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Delivery Now..."),
          GestureDetector(
            onTap:()=> openLocationSearchBox(context),
            child: Row(
              children: [
                Text(
                  "531173, Gidijala, Visakhapatnam",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ]
      ),
    );
  }

  void openLocationSearchBox(BuildContext context){
    showDialog(context: context, builder: (context)=> AlertDialog(
      title: Text("Your Location",  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
      content: TextField(
        decoration: InputDecoration(
          hintText: "Search Location"
        ),
      ),

      actions:[
        TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('Cancel', style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
        ),

        TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('ok',  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
        )
      ]
    ));
  }
}