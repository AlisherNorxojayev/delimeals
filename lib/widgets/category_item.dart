import 'package:delimeals/screens/category_meals_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryItem(
      {super.key, required this.title, required this.color, required this.id});

  void selectCategory(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(
    //   builder: (context) => CategoryMealsScreen(
    //       categoryId: id, categoryTitle: title,),
    // ));
    Navigator.pushNamed(
      context,
      CategoryMealsScreen.routeName,
      arguments: {
        "id":id,
        "title":title
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
