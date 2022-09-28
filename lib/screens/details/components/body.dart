import 'package:e_comerece_app/components/default_button.dart';
import 'package:e_comerece_app/models/product.dart';
import 'package:e_comerece_app/screens/details/components/color_dots.dart';
import 'package:e_comerece_app/screens/details/components/product_description.dart';
import 'package:e_comerece_app/screens/details/components/product_images.dart';
import 'package:e_comerece_app/screens/details/components/top_rounded_container.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImage(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: ProductDescription(
              product: product,
              onMorePress: () {},
            ),
          ),
          Column(
            children: [
              TopRoundedContainer(
                color: Colors.white54,
                child: ColorDots(product: product),
              ),
              TopRoundedContainer(color: Colors.white, 
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth! * 0.15,
                        right: SizeConfig.screenWidth! * 0.15,
                      bottom: getProportionateScreenHeight(20)
                    ),
                    child: DefaultButton(text: 'Add to Chart',press: (){},),
                  ))
            ],
          ),

        ],
      ),
    );
  }
}
