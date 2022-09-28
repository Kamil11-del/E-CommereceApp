import 'package:e_comerece_app/components/default_button.dart';
import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/models/cart.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../cart/components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routName = "/cart_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOurCart(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            'Your Chart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '${demoCart.length} items',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}

class CheckOurCart extends StatelessWidget {
  const CheckOurCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(20),
          horizontal: getProportionateScreenWidth(15)),
     // height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -16),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        color: Colors.white,
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  height: getProportionateScreenWidth(35),
                  width: getProportionateScreenWidth(35),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF5F6F9),
                  ),
                  child: SvgPicture.asset('assets/icons/receipt.svg'),
                ),
               Spacer(),
                Text('Add Voucher Card'),
                const SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios,color: kTextColor,size: 12,)
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text.rich(TextSpan(
                text: 'Total:\n',
                children: [
                  TextSpan(
                    text: '\$132.65',
                    style: TextStyle(color: Colors.black,fontSize: 15)
                  ),
                ],
              ),
              ),
              SizedBox(width: getProportionateScreenWidth(190),
                child:  DefaultButton(text: 'Check Out', press: (){}),
              ),
            ],)
          ],
        ),
      ),
    );
  }
}
