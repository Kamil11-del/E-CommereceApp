import 'package:e_comerece_app/components/bottom_navig_bar.dart';
import 'package:e_comerece_app/enums.dart';
import 'package:flutter/material.dart';
import '../profile/components/body.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
static String routName="/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Profile'),
        centerTitle: true,
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(selectMenu: MenuState.profile,),
    );
  }
}
