import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/widgets/categories.dart';
import 'package:food_app/widgets/customText.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
            Container(
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (_, index) => Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: EdgeInsets.all(8),
                  height: 240,
                  width: 200,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: red[50],
                        offset: Offset(4, 6),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.favorite,
                          color: red,
                          size: 18,
                        ),
                      ),
                      Image.asset(
                        'assets/images/plate1.png',
                        height: 140,
                        width: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Pad Thai',
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: red[50],
                                  offset: Offset(4, 6),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.send,
                                color: red,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: '4.5',
                                size: 14,
                                color: grey,
                              ),
                              RatingBar(
                                initialRating: 4.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 14,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: red,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                          CustomText(
                            text: '\$12.99',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
