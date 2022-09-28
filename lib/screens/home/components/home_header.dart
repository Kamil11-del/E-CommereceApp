import 'package:e_comerece_app/screens/cart/cart_screen.dart';
import 'package:e_comerece_app/screens/home/components/icon_btn_with_counter.dart';
import 'package:e_comerece_app/screens/home/components/search_field.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
class Homeheader extends StatelessWidget {
  const Homeheader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchFeild(),
          IconBtnWithContainer(
            icon: Icons.shopping_cart_outlined,
            press: (){
              Navigator.pushNamed(context, CartScreen.routName);
            },
          ),
          IconBtnWithContainer(
            icon: Icons.notifications_none,
            itemCount: 3,
            press: (){},
          ),

        ],
      ),
    );
  }
}

