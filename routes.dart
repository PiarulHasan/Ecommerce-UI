import 'package:ecommerceui/screens/cart/cart_screen.dart';
import 'package:ecommerceui/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerceui/screens/details/details_screen.dart';
import 'package:ecommerceui/screens/favoriteproduct/favorite.dart';
import 'package:ecommerceui/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerceui/screens/home/home_screen.dart';
import 'package:ecommerceui/screens/login_success/login_success_screen.dart';
import 'package:ecommerceui/screens/message/message.dart';
import 'package:ecommerceui/screens/notification/bellnotifi.dart';
import 'package:ecommerceui/screens/otp/otp_screen.dart';
import 'package:ecommerceui/screens/profile/profile_screen.dart';
import 'package:ecommerceui/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerceui/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  Message.routeName: (context) => Message(),
  Bellnotifi.routeName: (context) => Bellnotifi(),
  Favoriteproduct.routeName: (context) => Favoriteproduct(),
};
