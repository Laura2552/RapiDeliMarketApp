import 'package:flutter/material.dart';

//Pages
import 'package:rapideli_market_app/src/features/presentation/forgot_password_page/View/forgot_password.dart';
import 'package:rapideli_market_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:rapideli_market_app/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:rapideli_market_app/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:rapideli_market_app/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';
import 'package:rapideli_market_app/src/features/presentation/tabs/tabs_page/View/tabs_page.dart';
import 'package:rapideli_market_app/src/features/presentation/welcome_page/View/welcome_page.dart';


//Pages
//import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/welcome_page/View/welcome_page.dart';

final routes = <String, WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot-password' : (BuildContext context) => ForgotPassword(),
  'sign-up' : (BuildContext context) => SignUpPage(),
  'tabs' : (BuildContext context) => TabsPage(),
  'exploretab' : (BuildContext context) => ExploreTab(),
  'profiletab' : (BuildContext context) => ProfileTab(),

};