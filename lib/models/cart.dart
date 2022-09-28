import 'package:e_comerece_app/models/product.dart';

class Cart{
  final Product product;
  final int numOfItems;

  Cart({required this.product,required this.numOfItems});
}

List<Cart> demoCart=[
  Cart(product:demoProduct[0], numOfItems: 2),
  Cart(product:demoProduct[1], numOfItems: 3),
  Cart(product:demoProduct[2], numOfItems: 1),
  Cart(product:demoProduct[3], numOfItems: 4),
];