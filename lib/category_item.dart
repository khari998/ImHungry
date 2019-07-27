import 'package:flutter/material.dart';
import './meals.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem({this.title, this.color, this.id});

  void selectCategory(BuildContext cont) {
    // changes page to Meals
    Navigator.of(cont).push(
      MaterialPageRoute(
        builder: (_) => Meals(id, title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: InkWell(
        onTap: () => selectCategory(context), // changes page to Meals
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(15), // compiled constant spacing
          child: Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
          decoration: BoxDecoration(
            // decorate box with box decoration
            gradient: LinearGradient(
              // vertical gradient
              colors: [
                color.withOpacity(0.7), // beginning gradient color
                color, // ending gradient color
              ],
              begin: Alignment.topLeft, // beginning point for gradient
              end: Alignment.bottomRight, // ending point for gradient
            ),
            borderRadius:
                BorderRadius.circular(15), // sets circular border around box
          ),
        ),
      ),
    );
  }
}
