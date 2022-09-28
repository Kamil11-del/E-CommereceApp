import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/models/cart.dart';
import 'package:e_comerece_app/models/product.dart';
import 'package:e_comerece_app/screens/cart/components/cart_items.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCart.length,
        itemBuilder: (context, index) => Padding(
          padding:
              EdgeInsets.symmetric(vertical: 8),
          child: Dismissible(
            key: Key(demoCart[index].product.toString()),
            direction: DismissDirection.endToStart,
            child: CartItemCard(
              cart: demoCart[index],
            ),
            background: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset('assets/icons/Trash.svg'),
                ],
              ),
            ),
            onDismissed: (direction){
              setState(() {
                demoCart.removeAt(index);
              });
            },
          ),
        ),
      ),
    );
  }
}
