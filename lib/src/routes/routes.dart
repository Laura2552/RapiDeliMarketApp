import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/features/presentation/collection_detail_page/View/collection_detail_page.dart';
import 'package:rapideli_market_app/src/features/presentation/collection_page/View/collections_page.dart';
import 'package:rapideli_market_app/src/features/presentation/filter_page/View/filter_page.dart';

//Pages
import 'package:rapideli_market_app/src/features/presentation/forgot_password_page/View/forgot_password.dart';
import 'package:rapideli_market_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:rapideli_market_app/src/features/presentation/profile_detail_page/View/profile_detail_page.dart';
import 'package:rapideli_market_app/src/features/presentation/search_page/View/searchView.dart';
import 'package:rapideli_market_app/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:rapideli_market_app/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:rapideli_market_app/src/features/presentation/tabs/my_order_tab/View/my_order_tab.dart';
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
  'search' : (BuildContext context) => SearchPage(),
  'filter' : (BuildContext context) => FilterPage(),
  'myorder' : (BuildContext context) => MyOrderTab(),
  'collections' : (BuildContext context) => CollectionsPage(),
  'collections-detail' : (BuildContext context) => CollectionDetailPage(),
  'profile-detail' : (BuildContext context) => ProfileDetailPage(),

};