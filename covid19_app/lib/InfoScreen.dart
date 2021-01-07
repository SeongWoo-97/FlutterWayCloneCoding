import 'package:covid19_app/constant.dart';
import 'package:covid19_app/widgets/my_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyHeader(
              image: "assets/icons/coronadr.svg",
              textTop: "코로나에 대해서",
              textBorttom: "알아봅시다",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "증상",
                    style: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptomsCard(
                        image: "assets/images/headache.png",
                        title: "두통",
                        isActive: true,
                      ),
                      SymptomsCard(
                        image: "assets/images/caugh.png",
                        title: "기침",
                      ),
                      SymptomsCard(
                        image: "assets/images/fever.png",
                        title: "고열",
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "예방",
                    style: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventCard(
                    image: "assets/images/wear_mask.png",
                    title: "마스크 착용하기",
                    text: "마스크 에 대한 효과 설명",
                  ),
                  PreventCard(
                    image: "assets/images/wash_hands.png",
                    title: "손 씻기",
                    text: "손씻기 에 대한 효과 설명",
                  ),
                  SizedBox(height: 10)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SymptomsCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;

  const SymptomsCard({Key key, this.image, this.title, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: kActiveShadowColor,
                )
              : BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 3,
                  color: kShadowColor,
                )
        ],
      ),
      child: Column(
        children: [
          Image.asset(image),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;

  const PreventCard({Key key, this.image, this.title, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          children: [
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,9),
                      blurRadius: 7,
                      color: kShadowColor,
                    ),
                  ]),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$title",
                      style: kTitleTextStyle.copyWith(fontSize: 16),
                    ),
                    Text(
                      "$text",
                      style: TextStyle(fontSize: 13),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                    ),
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
