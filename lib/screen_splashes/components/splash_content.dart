import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
class SplashContent extends StatelessWidget {
  SplashContent({required this.text ,required this.image,

  });
    String? text;
    String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text!,textAlign: TextAlign.center,),
        Spacer(flex: 2,),
        Image.asset(image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}