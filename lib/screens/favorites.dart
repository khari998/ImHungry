import 'package:flutter/material.dart';

import '../widgets/recipe_item.dart';
import '../models/recipe.dart';

class Favorites extends StatelessWidget {
  final List<Recipe> favoriteMeals;

  Favorites(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text(
            'You don\'t have any favorite foods yet. You should add some!'),
      );
    } else {
      return ListView.builder(
          itemBuilder: (cont, ind) {
            final recipe = favoriteMeals[ind]; 
            return RecipeItem(
              id: recipe.id,
              title: recipe.title,
              imageUrl: recipe.imageUrl,
              duration: recipe.duration,
              complexity: recipe.complexity,
              affordability: recipe.affordability,
            );
          },
          itemCount: favoriteMeals.length,
        );
    }
  }
}
