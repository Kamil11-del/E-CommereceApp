import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/enums.dart';
import 'package:e_comerece_app/screens/home/home_screen.dart';
import 'package:e_comerece_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
class BottomNavBar extends StatelessWidget {
   BottomNavBar({
    Key? key, required this.selectMenu,
  }) : super(key: key);
final MenuState selectMenu;
  @override
  Widget build(BuildContext context) {
    final Color inActiveColorIcon =Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        color: Colors.white,
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {Navigator.pushNamed(context, HomeScreen.routName);},
                icon: Icon(
                  Icons.home,
                  color:MenuState.home==selectMenu?kPrimaryColor: inActiveColorIcon,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color:MenuState.favorite==selectMenu?kPrimaryColor: inActiveColorIcon,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat,
                  color:MenuState.message==selectMenu?kPrimaryColor: inActiveColorIcon,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ProfileScreen.routName);
                },
                icon: Icon(
                  Icons.person_outline,
                  color:MenuState.profile==selectMenu?kPrimaryColor: inActiveColorIcon,
                )),
          ],
        ),
      ),
    );
  }
}