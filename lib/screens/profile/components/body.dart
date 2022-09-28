import 'package:e_comerece_app/screens/profile/components/profile_menu.dart';
import 'package:e_comerece_app/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20,),
        ProfileMenu(iconData: Icons.person_outline,text: 'My Account',),
        ProfileMenu(iconData: Icons.notifications_none,text: 'Notifications',),
        ProfileMenu(iconData: Icons.settings_outlined,text: 'Setting',),
        ProfileMenu(iconData: Icons.help_outline,text: 'Help Center',),
        ProfileMenu(iconData: Icons.logout_outlined,text: 'Log Out',),
      ],
    );
  }
}

