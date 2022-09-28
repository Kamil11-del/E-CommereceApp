import 'package:e_comerece_app/enums.dart';
import 'package:e_comerece_app/components/bottom_navig_bar.dart';
import 'package:e_comerece_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import '../home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routName = "/home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(selectMenu: MenuState.home,),
    );
  }
}


