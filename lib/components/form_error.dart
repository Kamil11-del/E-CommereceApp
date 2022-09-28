import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';
class FormErrors extends StatelessWidget {
  const FormErrors({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => formErrorText(error:errors[index])),
    );
  }

  Row formErrorText( {required String error}) {
    return Row(
      children: [
        Icon(Icons.error_outline,color: kPrimaryColor,size: getProportionateScreenWidth(14),),
        SizedBox(width: getProportionateScreenWidth(10),),
        Text(error),
      ],);
  }
}
