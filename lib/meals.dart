import 'package:flutter/material.dart';

class Meals extends StatelessWidget {
  final String categoryID;
  final String categoryTitle;

  Meals(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text("The meals for a given category"),
      ),
    );
  }
}
