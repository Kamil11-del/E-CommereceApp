import 'package:e_comerece_app/screens/complete_profile//components/body.dart';
import 'package:flutter/material.dart';
class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);
static String routName='/complete_profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
