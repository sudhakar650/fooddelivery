import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/my_current_location.dart';
import '../components/my_description_box.dart';
import '../components/my_drawer_tile.dart';
import '../components/my_food_tile.dart';
import '../components/my_sliver_appbar.dart';
import '../components/my_tab_bar.dart';
import '../models/food.dart';
import '../models/restaurent.dart';
import 'food_page.dart';
import 'settings_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategories.values.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }


  List<Food> _filterMenuByCategory(FoodCategories category, List<Food> menu){
    return menu.where((food) => food.foodCategories == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> menu){
    return FoodCategories.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, menu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          final Food food = categoryMenu[index];
          return FoodTile(
            food: food,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> FoodPage(food: food)));
            }
          );
        },
      );
    }).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.background,
      //   title: const Text("Home Page")
      // ),

      body: NestedScrollView(
        headerSliverBuilder: ((context, innerBoxIsScrolled) {
          return [
            MySliverAppBar(
              title: MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(indent: 25, endIndent: 25, color: Theme.of(context).colorScheme.secondary,),
                  // my current location
                  const MyCurrentLocation(),
                  //description box
                  const MuDescriptionBox()
                ]
              ),
            )
          ];
        }),
        body: Consumer<Restaurent>(
          builder: (context, restaurent, child) {
            return TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restaurent.menu),
            );
          },
        ),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.lock,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            MyDrawerTile(
              label: "H O M E",
              icon: const Icon(Icons.home),
              onTap: (){
                Navigator.pop(context);
              },
            ),

            MyDrawerTile(
              label: "S E T T I N G S",
              icon: const Icon(Icons.settings),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}