// ignore_for_file: deprecated_member_use

import 'package:e_comerece_app/models/product.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
class RoundedIconBtn extends StatelessWidget {
  RoundedIconBtn({
    Key? key, required this.iconData, required this.press,
  }) : super(key: key);
  final IconData iconData;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: getProportionateScreenWidth(30),
      width: getProportionateScreenWidth(30),
      child: MaterialButton(
        elevation: 4.2,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.white,
        onPressed: press,
        child:Icon(iconData),
      ),
    );
  }
}

