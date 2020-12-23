import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 50,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    "assets/icons/backward.svg",
                    height: 11,
                  ),
                  SvgPicture.asset(
                    "assets/icons/menu.svg",
                    height: 11,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.all(6),
                height: 255,
                width: 255,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: kSecondaryColor),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image_1_big.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Vegan salad bowl\n",
                          style: Theme.of(context).textTheme.headline5),
                      TextSpan(
                        text: "With red tomato",
                        style: TextStyle(
                          color: kTextColor.withOpacity(0.7),
                        ),
                      ),
                    ]),
                  ),
                  Text(
                    "\$20",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
                style: TextStyle(fontSize: 12.5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Add to bag",
                          style: Theme.of(context).textTheme.button,
                        ),
                        SizedBox(width: 25),
                        SvgPicture.asset(
                          "assets/icons/forward.svg",
                          height: 11,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor.withOpacity(0.26)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(14),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: SvgPicture.asset("assets/icons/bag.svg"),
                        ),
                        Positioned(
                          right: 10,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 23,
                            width: 23,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
                            ),
                            child: Text(
                              "0",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: kPrimaryColor, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
