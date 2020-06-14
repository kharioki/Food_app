import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/widgets/customText.dart';

List<Category> categoriesList = [Category(image: 'salad.png', name: 'Salad')];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: red[50],
                        offset: Offset(4, 6),
                        blurRadius: 12,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/images/${categoriesList[index].image}',
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                CustomText(
                  text: '${categoriesList[index].name}',
                  size: 14,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
