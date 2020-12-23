import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;

  const FoodCard({
    Key key,
    this.title,
    this.ingredient,
    this.image,
    this.price,
    this.calories,
    this.description,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 400,
        width: 270,
        margin: EdgeInsets.only(left: 20),
        child: Stack(
          children: [
            // Big light background
            Positioned(
              right: 0,
              height: 400,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(0.1),
                ),
              ),
            ),
            // Rounded background
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15),
                ),
              ),
            ),
            // 음식 사진
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            // 가격 20달러
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                "\$$price",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 201,
              left: 30,
              child: Container(
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      "With $ingredient",
                      style: TextStyle(color: kTextColor.withOpacity(0.4)),
                    ),
                    SizedBox(height: 16),
                    Text(
                      description,
                      maxLines: 4,
                      style: TextStyle(color: kTextColor.withOpacity(0.6)),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(calories)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
