import 'package:e_comerece_app/components/rounded_icon_btn.dart';
import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/models/product.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
              product.colors.length,
                  (index) => ColorDot(
                  color: product.colors[index],
                  isSelected: selectedColor == index)),
          Spacer(),
          RoundedIconBtn(iconData: Icons.remove, press: (){}),
          SizedBox(width: getProportionateScreenWidth(20),),
          RoundedIconBtn(iconData: Icons.add, press: (){}),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);
  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.all(4),
      height: getProportionateScreenWidth(30),
      width: getProportionateScreenWidth(30),
      decoration: BoxDecoration(
        //color: product.colors[0],
        shape: BoxShape.circle,
        border:
        Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
