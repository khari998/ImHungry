import 'package:flutter/material.dart';

import './screens/meal_details.dart';
// import './screens/food_cats.dart';
import './screens/meals.dart';
import './screens/tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        Meals.routeName: (cont) => Meals(),
        MealDetails.routeName: (cont) => MealDetails(),
      },
    );
  }
}
