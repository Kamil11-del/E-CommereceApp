import 'package:e_comerece_app/screens/otp//components/body.dart';
import 'package:flutter/material.dart';
class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
static String routName="/otp_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
