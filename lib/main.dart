import 'package:flutter/material.dart';
import './screens/category_meals_screen.dart';

import './screens/categoris_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          backgroundColor: const Color.fromRGBO(255, 254, 229, 1),
          brightness: Brightness.light,
        ),
        fontFamily: 'Raleway',
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Color(0xFF143333),
          ),
          bodyText2: TextStyle(
            color: Color(0xFF143333),
          ),
          headline6: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => const MealDetailScreen()
      },
    );
  }
}
