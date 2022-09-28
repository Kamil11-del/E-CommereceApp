import 'package:e_comerece_app/components/default_button.dart';
import 'package:e_comerece_app/components/form_error.dart';
import 'package:e_comerece_app/components/social_card.dart';
import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/screens/sign_in/components/sign_in_form.dart';
import 'package:e_comerece_app/screens/sign_up/components/sign_up_form.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight! * 0.02,
            ),
            Text('Register Account', style: headingStyle),
            Text(
              'Complete your details or continue \nwith your social media',
              textAlign: TextAlign.center,
            ),
            SignUpForms(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: 'assets/icons/google-icon.svg',
                  press: () {},
                ),
                SocialCard(
                  icon: 'assets/icons/facebook-2.svg',
                  press: () {},
                ),
                SocialCard(
                  icon: 'assets/icons/twitter.svg',
                  press: () {},
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20)
            ),
            Text(
                'By continuing Confirm that you agree \nwith our term and conditions',textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
