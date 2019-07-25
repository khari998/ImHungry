import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  CategoryItem(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15), // constant spacing by EdgeInsets in all directions
      child: Text(title),
      decoration: BoxDecoration( // decorate box with box decoration
        gradient: LinearGradient( // vertical gradient
          colors: [
            color.withOpacity(0.7), // beginning gradient color
            color, // ending gradient color
          ],
          begin: Alignment.topLeft, // beginning point for gradient
          end: Alignment.bottomRight, // ending point for gradient
        ),
        borderRadius: BorderRadius.circular(15), // sets circular border around box
      ),
    );
  }
}
