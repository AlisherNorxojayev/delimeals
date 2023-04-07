import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CategoryMealsScreen extends StatelessWidget {
//   final String categoryId;
//   final String categoryTitle;

//   const CategoryMealsScreen(
//       {super.key,
//       required this.categoryId,
//       required this.categoryTitle,
// });

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final title = routeArgs["title"];
    final id = routeArgs["id"];
    return Scaffold(
      appBar: AppBar(
        title: Text(title!)
      ),
      body: Center(child: Text(id.toString())),
    );
  }
}
