import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Category {
  final String id; // give unique id to each Category
  final String title;
  final Color color; // provided through material.dart
  const Category({ // Category onstructor with named arguments
    @required this.id, // require id property
    @required this.title, // require title property
    this.color = Colors.red, // provide default color through constructor
  });
}
