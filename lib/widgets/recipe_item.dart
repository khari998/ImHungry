import 'package:flutter/material.dart';
import '../screens/meal_details.dart';

import '../models/recipe.dart';

class RecipeItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  RecipeItem({
    @required this.title,
    @required this.id,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
  });

  String get complexityText => 
    complexity == Complexity.Simple ? 'Simple'
  : complexity == Complexity.Challenging ? 'Challenging'
  : complexity == Complexity.Hard ? 'Hard'
  : "Unknown";

  String get affordabilityText => 
    affordability == Affordability.Affordable ? 'Affordable'
  : affordability == Affordability.Pricey ? 'Pricey'
  : affordability == Affordability.Luxurious ? 'Expensive'
  : "Unknown";

  void selectRecipe(BuildContext cont) {
    Navigator.of(cont).pushNamed(MealDetails.routeName, arguments: id,);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectRecipe(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  // wraps around image to force formatting
                  borderRadius: BorderRadius.only(
                    // only target top corner radiuses
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity, // takes up max width possible
                    fit: BoxFit.cover, // fits image despite image size
                  ),
                ),
                Positioned(
                  bottom: 20, // positions Text 20px from bottom
                  right: 10, // positions Text 10px from right
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black26, // midly transparent backdrop
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.work,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(complexityText),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.attach_money,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(affordabilityText),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
