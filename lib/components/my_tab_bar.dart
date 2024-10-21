import 'package:flutter/material.dart';

import '../models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({
    super.key,
    required this.tabController
  });

  List<Tab> _getTabs(){
    return FoodCategories.values.map((category) => Tab(
      text: category.toString().split('.').last,
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _getTabs(),
      )
    );
  }
}