import 'package:e_comerece_app/screen_splashes/splash_screen.dart';
import 'package:e_comerece_app/screens/cart/cart_screen.dart';
import 'package:e_comerece_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:e_comerece_app/screens/details/detail_screen.dart';
import 'package:e_comerece_app/screens/forgot_password/forgot_pass_screen.dart';
import 'package:e_comerece_app/screens/home/home_screen.dart';
import 'package:e_comerece_app/screens/login_sucsses/login_success_screen.dart';
import 'package:e_comerece_app/screens/otp/otp_screen.dart';
import 'package:e_comerece_app/screens/profile/profile_screen.dart';
import 'package:e_comerece_app/screens/sign_in/sign_in_screens.dart';
import 'package:e_comerece_app/screens/sign_up/signup_screen.dart';
import 'package:flutter/widgets.dart';
//we use name routes here
// All our maps will be here
final Map<String, WidgetBuilder> routes={
  SplashScreen.routName:(context)=> SplashScreen(),
  SignInScreen.routName:(context)=>SignInScreen(),
  ForgotPasswordScreen.routName:(context)=>ForgotPasswordScreen(),
  LoginSuccessScreen.routName:(context)=>LoginSuccessScreen(),
  SignUpScreen.routName:(context)=>SignUpScreen(),
  CompleteProfileScreen.routName:(context)=>CompleteProfileScreen(),
  OtpScreen.routName:(context)=>OtpScreen(),
  HomeScreen.routName:(context)=>HomeScreen(),
  DetailScreen.routName:(context)=>DetailScreen(),
  CartScreen.routName:(context)=>CartScreen(),
  ProfileScreen.routName:(context)=>ProfileScreen(),
};