import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
      width:double.infinity,
      //height: 90,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text.rich(
          TextSpan(
            text: "A Summer Surprise\n",
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: 'Cashback 20%',
                style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
              ),
            ],

          )
      ),
    );
  }
}
