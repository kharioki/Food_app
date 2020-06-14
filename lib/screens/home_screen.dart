import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/widgets/categories.dart';
import 'package:food_app/widgets/customText.dart';
import 'package:food_app/widgets/featured_products.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 25),
        padding: EdgeInsets.symmetric(horizontal: 16),
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/home.png',
                width: 26,
                height: 26,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/target.png',
                width: 26,
                height: 26,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/shopping-bag.png',
                width: 26,
                height: 26,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/avatar.png',
                width: 26,
                height: 26,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'What would you like to eat?',
                  size: 18,
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: grey[300],
                    offset: Offset(1, 1),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  color: red,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Find food and restaurant',
                    border: InputBorder.none,
                  ),
                ),
                trailing: Icon(
                  Icons.filter_list,
                  color: red,
                ),
              ),
            ),
            SizedBox(height: 10),
            Categories(),
            SizedBox(height: 10),
            CustomText(
              text: 'Featured',
              size: 20,
              color: grey[800],
            ),
            SizedBox(height: 5),
            FeaturedProducts(),
          ],
        ),
      ),
    );
  }
}
