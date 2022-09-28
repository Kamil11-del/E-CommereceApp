import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
class SearchFeild extends StatelessWidget {
  const SearchFeild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.6,
      //height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kSecondaryColor.withOpacity(0.1),
      ),
      child: TextField(
        onChanged: (value){
          //search value........
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search Product',
          prefixIcon: Icon(Icons.search,color: kPrimaryColor,),
          contentPadding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(9),
          ),
        ),
        cursorColor: kPrimaryColor,
      ),
    );
  }
}

