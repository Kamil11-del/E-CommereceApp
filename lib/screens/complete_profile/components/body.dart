import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';

import 'complete_profile_form.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: Column(
            children: [
              Text('Register Account', style: headingStyle),
              Text(
                'Complete your details or continue \nwith your social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.05,
              ),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(20),),
              Text('By continuing you confirm that you agree \nwith our term and conditions',textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
