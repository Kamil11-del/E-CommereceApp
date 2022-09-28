import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/routes.dart';
import 'package:e_comerece_app/screen_splashes/splash_screen.dart';
import 'package:e_comerece_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:theme(),
      //We use route Names so that we remember the name routes
      initialRoute: SplashScreen.routName,
      routes: routes,
    );
  }
}
