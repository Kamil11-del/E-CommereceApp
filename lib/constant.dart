import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFA53E),
      Color(0xFFFF7643),
    ]);
const kSecondaryColor=Color(0xFF979797);
const kTextColor=Color(0xFF757575);
const kAnimationDuration=Duration(milliseconds: 200);

final  headingStyle=TextStyle(
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5);
//Form Errors constants here
final RegExp emailValidatorRegExp=
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const kEmailNullError='Please enter your email';
const kInvalidEmailError='Please enter valid email';
const kPassNullError='Please Enter your Password';
const kShortPassError='Password is too short';
const kMatchPassError="Password don't match";
const kNameNullError="Please enter your Name";
const kPhoneNumNullError="Please enter your phone Number";
const kAddressNullError="Please enter your address";

final otpInputDecoration=InputDecoration(
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    border: outlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15))
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}