import 'package:e_comerece_app/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';
class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
static String routName="/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
