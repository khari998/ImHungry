import 'package:flutter/material.dart';

import './dummy-data.dart';
import './models/recipe.dart';
import './screens/meal_details.dart';
import './screens/filters.dart';
import './screens/meals.dart';
import './screens/tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map <String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Recipe> _availableMeals = DUMMY_MEALS;

  void _setFilters (Map <String, bool> filterdata) {
    setState(() {
      _filters = filterdata;
      _availableMeals = DUMMY_MEALS.where((recipe) {
        if(_filters['gluten'] && !recipe.isGlutenFree) {
          return false;
        }
        if(_filters['lactose'] && !recipe.isLactoseFree) {
          return false;
        }
        if(_filters['vegan'] && !recipe.isVegan) {
          return false;
        }
        if(_filters['vegetarian'] && !recipe.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImHungry',
      theme: ThemeData(
        // Settings for Application theme
        primarySwatch: Colors.red,
        accentColor: Colors.yellowAccent,
        canvasColor: Color.fromRGBO(236, 236, 236, 1),
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
              ),
            ),
      ),
      // home: FoodCategories(),
      routes: {
        '/': (cont) => Tabs(), // routes to home page by default
        Meals.routeName: (cont) => Meals(_availableMeals),
        MealDetails.routeName: (cont) => MealDetails(),
        Filters.routeName: (cont) => Filters(_filters, _setFilters),
      },
    );
  }
}
