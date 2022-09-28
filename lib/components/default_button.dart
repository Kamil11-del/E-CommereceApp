import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
class DefaultButton extends StatelessWidget {
  DefaultButton({required this.text, required this.press, Key? key,
  }) : super(key: key);
  final String text;
  void Function()? press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}