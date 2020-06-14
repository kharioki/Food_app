import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/models/product.dart';
import 'package:food_app/widgets/customText.dart';

List<Product> productList = [
  Product(
      image: 'plate1.png',
      name: 'Pad Thai',
      rating: 4.5,
      wishlist: true,
      price: 12.99),
  Product(
      image: 'plate2.png',
      name: 'Homefries',
      rating: 4,
      wishlist: true,
      price: 9.99),
  Product(
      image: 'plate3.png',
      name: 'Chicken salad',
      rating: 3.5,
      wishlist: false,
      price: 15.99),
  Product(
      image: 'plate4.png',
      name: 'Szechuan chicken',
      rating: 4.5,
      wishlist: true,
      price: 11.99),
  Product(
      image: 'plate5.png',
      name: 'Corn',
      rating: 4,
      wishlist: true,
      price: 12.99),
];

class FeaturedProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (_, index) => Container(
          padding: const EdgeInsets.all(8.0),
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
                  (productList[index].wishlist)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: red,
                  size: 18,
                ),
              ),
              Image.asset(
                'assets/images/${productList[index].image}',
                height: 140,
                width: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: '${productList[index].name}',
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
                        text: '${productList[index].rating}',
                        size: 14,
                        color: grey,
                      ),
                      RatingBar(
                        initialRating: productList[index].rating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 14,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
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
                    text: '\$${productList[index].price}',
                    size: 14,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
