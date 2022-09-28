import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/models/product.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';
class ProductImage extends StatefulWidget {
  const ProductImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int selectedImage=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: getProportionateScreenWidth(234),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(widget.product.images[selectedImage]),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length, (index) => buildSmallPrevie(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPrevie(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedImage=index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(9)),
        padding: EdgeInsets.all(5.0),
        width: getProportionateScreenWidth(48),
        height: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color:selectedImage==index? kPrimaryColor: Colors.transparent)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
