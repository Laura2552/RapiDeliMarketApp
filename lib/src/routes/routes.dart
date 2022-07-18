import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/pages/forgot_password.dart';
import 'package:rapideli_market_app/src/pages/login_page.dart';

//Pages
import 'package:rapideli_market_app/src/pages/welcome_page.dart';

final routes = <String, WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot-password' : (BuildContext context) => ForgotPassword()
};