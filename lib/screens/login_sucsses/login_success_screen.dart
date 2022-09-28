
import 'package:flutter/material.dart';

import '../login_sucsses//components/body.dart';
class LoginSuccessScreen extends StatelessWidget {
  static String routName="/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('Login Success'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
