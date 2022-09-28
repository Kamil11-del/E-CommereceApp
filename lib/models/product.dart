import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavorite, isPopular;
  Product({
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    required this.price,
    this.isFavorite = false,
    this.isPopular = false,
  });

}

//our demo product

List<Product> demoProduct = [
  Product(
    title: 'Wireless Controller for PS4',
    description: 'Wireless controller for PS4 gives you what '
        'you want in in your gaming from over precision control '
        'your games to sharing...',
    images: [
      'assets/images/ps4_console_white_1.png',
      'assets/images/ps4_console_white_2.png',
      'assets/images/ps4_console_white_3.png',
      'assets/images/ps4_console_white_4.png',
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 64.66,
    rating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),
  ///////////////
  Product(
    title: 'Nike Sport White _ Man Pant',
    description: 'Nike sport is a popular Brand. This Man Pant is comfortable and you will feel better to wear it, it is special made for workouts and exercise',
    images: [
      'assets/images/Image Popular Product 2.png',
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 50.10,
    isPopular: true,
    rating: 4.2,
  ),
  /////////////

  Product(
      title: 'Gloves XC Omega _ Polygon',
      description: 'This XC Omega Gloves is attractive and innerly '
          'soft, it is made of pure leather and have a beautiful'
          ' design and in hands it gives more intense look ',
      images: [
        'assets/images/glap.png'
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      price: 40.34,
      rating: 4.0,
      isPopular: true,
      isFavorite: true,
  ),
  ///////////////
  Product(
    title: 'Logitech head',
    description: 'Logitech head is new Market, '
        'this new technology is wonderful,you can listen songs '
        'and voice more clearly ,it is made of rubber not so hard',
    images: [
      'assets/images/wireless headset.png'
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 30.34,
    rating: 4.0,
    isFavorite: true,
  )

];
