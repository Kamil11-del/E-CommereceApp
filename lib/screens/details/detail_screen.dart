import 'package:e_comerece_app/components/rounded_icon_btn.dart';
import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/models/product.dart';
import 'package:e_comerece_app/screens/details/components/body.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);
  static String routName = "/detail_screen";
  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments? arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailArguments?;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFF5F6F9),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: Row(
              // mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(20),
                      top: getProportionateScreenWidth(20)),
                  child: RoundedIconBtn(
                    iconData: Icons.arrow_back,
                    press: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding:  EdgeInsets.only(top: 20.0,right: 15),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Text(arguments!.product.rating.toString(),style: TextStyle(color: kTextColor,fontWeight: FontWeight.w600),),
                      SizedBox(width: 3,),
                      Icon(Icons.star,color: Colors.yellow,)

                    ],
                  ),
                ),
              )
            ],
          ),
      body: Body(product: arguments.product,),
      ),
    );
  }
}

class ProductDetailArguments {
  final Product product;
  ProductDetailArguments({required this.product});
}
