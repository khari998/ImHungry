import 'package:flutter/material.dart';

class Meals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Center(
        child: Text("The meals for a given category"),
      ),
    );
  }
}
