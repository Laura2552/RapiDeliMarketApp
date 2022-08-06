import 'package:flutter/material.dart';
//import 'package:rapideli_market_app/src.features.presentation.tabs/tabs_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rapideli_market_app/firebase_options.dart';
//Routes
import 'package:rapideli_market_app/src/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Init Firebase service.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )
      ),
    );
  }
}