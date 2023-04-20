import 'package:delimeals/screens/categories_screens.dart';
import 'package:delimeals/screens/category_meals_screen.dart';
import 'package:delimeals/screens/meal_detail_screen.dart';
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
          // canvasColor: Colors.black,
          fontFamily: "Raleway",
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyMedium: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyLarge: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              titleMedium: TextStyle(
                  fontSize: 24,
                  fontFamily: "RobotoCondensed",
                  fontWeight: FontWeight.bold))),
      // home: CategoriesScreens(),
      initialRoute: "/",
      routes: {
        "/": (context) => CategoriesScreens(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen()
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => CategoryMealsScreen(),
        );
      },
    ));
  }
}
