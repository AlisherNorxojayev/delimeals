import 'package:delimeals/dummy_data.dart';
import 'package:delimeals/models/meal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});
  static const routeName = "/meal_detail_screen";

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere(
      (element) => element.id == mealId,
    );
    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              child: Text(
                "Ingredients",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 150,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(selectedMeal.ingredients[index]),
                    ),
                  );
                },
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
