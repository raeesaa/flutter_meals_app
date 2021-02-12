import 'package:flutter/material.dart';

import '../meal_item.dart';
import '../../data/dummy_data.dart';

class CategoryMeals extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryMeals = DUMMY_MEALS
        .where(
          (meal) => meal.categories.contains(routeArgs['id']),
        )
        .toList();
    print(categoryMeals.length);

    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs['title']),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => MealItem(categoryMeals[index]),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
