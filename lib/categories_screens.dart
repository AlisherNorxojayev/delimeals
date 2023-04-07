import 'package:delimeals/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import './dummy_data.dart';

class CategoriesScreens extends StatefulWidget {
  const CategoriesScreens({super.key});

  @override
  State<CategoriesScreens> createState() => _CategoriesScreensState();
}

class _CategoriesScreensState extends State<CategoriesScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DeliMeal"),
      ),
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((catData) {
          return CategoryItem(
            title: catData.title,
            color: catData.color,
            id: catData.id,
          );
        }).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
