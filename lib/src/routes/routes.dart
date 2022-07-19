import 'package:flutter/material.dart';

//Pages
import 'package:rapideli_market_app/src/pages/forgot_password.dart';
import 'package:rapideli_market_app/src/pages/login_page.dart';
import 'package:rapideli_market_app/src/pages/sign_up_page.dart';
import 'package:rapideli_market_app/src/pages/welcome_page.dart';

final routes = <String, WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot-password' : (BuildContext context) => ForgotPassword(),
  'sign-up' : (BuildContext context) => SignUpPage()

};