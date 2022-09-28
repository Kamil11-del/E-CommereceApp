import 'package:e_comerece_app/components/product_card.dart';
import 'package:e_comerece_app/models/product.dart';
import 'package:e_comerece_app/screens/details/detail_screen.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';

import 'section_title.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: 'Popular Product', press: () {}),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProduct.length,
                (index) => ProductCard(
                  product: demoProduct[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailScreen.routName,
                    arguments:
                        ProductDetailArguments(product: demoProduct[index]),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
