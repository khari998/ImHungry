import 'package:flutter/material.dart';
import 'package:im_hungry/models/recipe.dart';

import '../widgets/recipe_item.dart';

class Meals extends StatelessWidget {
  // final String categoryID;
  // final String categoryTitle;
  // Meals(this.categoryID, this.categoryTitle);
  static const routeName = '/meals'; 

  final List<Recipe> availableMeals;

  Meals(this.availableMeals);

  @override
  Widget build(BuildContext context) {
    final routeArguments = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArguments['title'];
    final categoryId = routeArguments['id'];
    final categoryMeals = availableMeals
        .where((recipe) => recipe.categories.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (cont, ind) {
            final recipe = categoryMeals[ind]; 
            return RecipeItem(
              id: recipe.id,
              title: recipe.title,
              imageUrl: recipe.imageUrl,
              duration: recipe.duration,
              complexity: recipe.complexity,
              affordability: recipe.affordability,
            );
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
