import 'package:flutter/material.dart';

//UI
import 'package:flutter/services.dart';
import 'package:rapideli_market_app/src/widgets/back_button.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      )
    );

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                width: double.infinity,
                  height: 350.0,
                  fit: BoxFit.cover,
                  image: NetworkImage('https://img.freepik.com/fotos-premium/mesa-madera-superior-vacia-supermercado-desenfoque-fondo_36051-467.jpg?w=2000')
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: backButton(context, Colors.white),
              ),
            ],
          ),
          Container(

          )
        ],),
      );



  }
}