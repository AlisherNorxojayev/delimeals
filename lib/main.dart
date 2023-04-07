import 'package:delimeals/categories_screens.dart';
import 'package:delimeals/category_meals_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyMedium: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          bodyLarge: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          titleMedium:TextStyle(
            fontSize: 24,
            fontFamily: "RobotoCondensed",
            fontWeight: FontWeight.bold
          )
        )
      ),
      home: CategoriesScreens(),
      routes: {
        "/categories_meals":(context) => CategoryMealsScreen()
      },
    ));
  }
}
