import 'package:flutter/material.dart';
import './dummy-data.dart';
import './category_item.dart';

class FoodCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Categories"), // compile time constant title
      ),
      body: GridView(
        children: DUMMY_CATEGORIES
            .map((cat) => CategoryItem(
                  // map the dummy data into Category Widgets
                  id: cat.id,
                  title: cat.title,
                  color: cat.color,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
