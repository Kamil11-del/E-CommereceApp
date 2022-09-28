import 'package:e_comerece_app/screens/forgot_password//components/body.dart';
import 'package:flutter/material.dart';
class ForgotPasswordScreen extends StatelessWidget {
static String routName="/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
