import 'package:flutter/material.dart';

class FoodCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: <Widget>[],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2 ,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
