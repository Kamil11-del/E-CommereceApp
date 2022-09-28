import 'package:e_comerece_app/components/default_button.dart';
import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/screens/otp/components/otp_form.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight! * 0.05,
            ),
            Text('OTP Verification', style: headingStyle),
            Text(
              'We sent your code to +92 322 95*****',
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This code will expired in '),
                // TweenAnimationBuilder(
                //     tween: Tween(begin: 30.0, end: 0),
                //     duration: Duration(seconds: 30),
                //     builder: (context, value, child) =>
                //         Text("00:$value",style: TextStyle(color: kPrimaryColor),)),
              ],
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.1,
            ),
            OtpForm(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.1,
            ),
            GestureDetector(
              onTap: (){
                // on tap resend otp code
              },
              child: Text(
                'Resend OTP code',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}

