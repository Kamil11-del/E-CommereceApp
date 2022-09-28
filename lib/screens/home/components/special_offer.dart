import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';

import 'section_title.dart';
class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image:'assets/images/Image Banner 2.png',
                catogry: 'Smart Phones',
                numOfBrands: 18,
                press: (){},
              ),SpecialOfferCard(
                image:'assets/images/Image Banner 3.png',
                catogry: 'Fashions',
                numOfBrands: 24,
                press: (){},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  SpecialOfferCard({
    Key? key, required this.catogry, required this.image, required this.numOfBrands, required this.press,
  }) : super(key: key);
  final String catogry,image;
  final int numOfBrands;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding:  EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: getProportionateScreenWidth(200),
          height: getProportionateScreenHeight(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15),
                      vertical: getProportionateScreenWidth(10)),
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: '$catogry\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                        text: '$numOfBrands Brands',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
