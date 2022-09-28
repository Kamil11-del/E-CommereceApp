import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/models/product.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product, required this.onMorePress,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback onMorePress;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
          ),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: getProportionateScreenWidth(60),
            height: getProportionateScreenWidth(40),
            decoration: BoxDecoration(
              color: product.isFavorite
                  ? kPrimaryColor.withOpacity(0.23)
                  : kSecondaryColor.withOpacity(0.18),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
            child: Icon(
              Icons.favorite,
              color: product.isFavorite ? Colors.red : Colors.white70,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(15),
              right: getProportionateScreenWidth(60)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),vertical: 6),
          child: GestureDetector(
            onTap: onMorePress,
            child: Row(
              children: [
                Text(
                  'See more Detailes',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_forward_ios,size: 12,color: kPrimaryColor,)
              ],
            ),
          ),
        )
      ],
    );
  }
}