import 'package:e_comerece_app/components/default_button.dart';
import 'package:e_comerece_app/components/form_error.dart';
import 'package:e_comerece_app/constant.dart';
import 'package:e_comerece_app/screens/otp/otp_screen.dart';
import 'package:e_comerece_app/size_config.dart';
import 'package:flutter/material.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors=[];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              buildNameFormField(),
              SizedBox(height: getProportionateScreenHeight(30),),
              buildLastNameFormField(),
              SizedBox(height: getProportionateScreenHeight(30),),
              buildPhoneNumFormField(),
              SizedBox(height: getProportionateScreenHeight(30),),
              buildAddressFormField(),
              FormErrors(errors: errors),
              SizedBox(height: getProportionateScreenHeight(40),),
              DefaultButton(text: 'Continue', press: (){
                if(_formKey.currentState!.validate()){
              Navigator.pushNamed(context,OtpScreen.routName);
                }
              }),
            ],
          ),
        ));
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.streetAddress,
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter your Address',
        labelText: 'Address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.location_on_outlined,
          color: kPrimaryColor,
        ),
      ),
      cursorColor: kPrimaryColor,
    );
  }

  TextFormField buildPhoneNumFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumNullError)) {
          setState(() {
            errors.remove(kPhoneNumNullError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumNullError)) {
          setState(() {
            errors.add(kPhoneNumNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter Phone Number',
        labelText: 'Phone Number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.phone_android_outlined,
          color: kPrimaryColor,
        ),
      ),
      cursorColor: kPrimaryColor,
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => lastName = newValue,
      decoration: InputDecoration(
        hintText: 'Enter your last Name',
        labelText: 'Last Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.person,
          color: kPrimaryColor,
        ),
      ),
      cursorColor: kPrimaryColor,
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNameNullError)) {
          setState(() {
            errors.add(kNameNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter your first Name',
        labelText: 'First Name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.person,
          color: kPrimaryColor,
        ),
      ),
      cursorColor: kPrimaryColor,
    );
  }
}
