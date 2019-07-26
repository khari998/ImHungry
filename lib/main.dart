import 'package:flutter/material.dart';
import './food_cats.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImHungry',
      theme: ThemeData(
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
      home: FoodCategories(),
    );
  }
}
