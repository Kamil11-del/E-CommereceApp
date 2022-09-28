import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/models/cart.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key, required this.cart,
  }) : super(key: key);
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color:Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(14),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(cart.product.title,style: TextStyle(fontSize: 15,color:Colors.black, ),maxLines: 2,),
            Text.rich(
              TextSpan(text: '\$${cart.product.price}',style: TextStyle(fontWeight: FontWeight.w600,color: kPrimaryColor),
                  children: [
                    TextSpan(text: " x${cart.numOfItems}",style: TextStyle(color: kTextColor)),
                  ]
              ),
            ),
          ],
        )
      ],
    );
  }
}