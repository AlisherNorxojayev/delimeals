import 'package:delimeals/dummy_data.dart';
import 'package:delimeals/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/categories_meals";
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final title = routeArgs["title"];
    final id = routeArgs["id"];
    final categoryMeal = DUMMY_MEALS.where(
      (element) {
        return element.categories.contains(id);
      },
    ).toList();
    return Scaffold(
        appBar: AppBar(title: Text(title!)),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: categoryMeal[index].id,
              title: categoryMeal[index].title,
              imgUrl: categoryMeal[index].imageUrl,
              duraction: categoryMeal[index].duration,
              complexity: categoryMeal[index].complexity,
              affordability: categoryMeal[index].affordability,
            );
          },
          itemCount: categoryMeal.length,
        ));
  }
}
