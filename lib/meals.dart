import 'package:flutter/material.dart';

class Meals extends StatelessWidget {
  // final String categoryID;
  // final String categoryTitle;
  // Meals(this.categoryID, this.categoryTitle);
  static const routeName = '/meals';

  @override
  Widget build(BuildContext context) {
    final routeArguments = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArguments['title'];
    final categoryId = routeArguments['id'];
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
