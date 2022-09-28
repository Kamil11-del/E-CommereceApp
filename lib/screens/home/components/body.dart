import 'package:e_comerece_app/screens/home/components/catogries.dart';
import 'package:e_comerece_app/screens/home/components/discount_banner.dart';
import 'package:e_comerece_app/screens/home/components/home_header.dart';
import 'package:e_comerece_app/screens/home/components/popular_product.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
import 'special_offer.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Homeheader(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            Catogries(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            SpecialOffer(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            PopularProduct(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
          ],
        ),
      ),
    );
  }
}

