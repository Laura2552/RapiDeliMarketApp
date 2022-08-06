import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
//import 'package:rapideli_market_app/src/features/presentation/login_page/View/login_page.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1601598851547-4302969d0614?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8b25saW5lJTIwc2hvcHBpbmclMjBjYXJ0fGVufDB8fDB8fA%3D%3D&w=1000&q=80')
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur( sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: headerText(texto: 'PRODUCTOS DE CALIDAD, A LA PUERTA DE TU CASA',
                    color: Colors.white,
                    fontSize: 45.0),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text('Proporcione la ubicación exacta para un servicio más rápido.', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0
                )),
              ),
              createButton(
                context: context,
                 labelButton: 'Inicia sesión',
                 buttonColor: orange,
                 func: (){
                      Navigator.pushNamed(context, 'login');
             }),
              createButton(
                  context: context,
                labelButton: 'Conectar con facebook',
                buttonColor: fbButtonColor,
                isWithIcon: true,
                icon: AssetImage('assets/face.png'),
                func: ()=> print("IrAFacebook")
              )
                    // aqui va el boton azul
            ],
          )]
      )
    );
  }
}
/*
Container(
                width: 350.0,
                height: 45.0,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,  MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    color: Theme.of(context).accentColor,
                    child: Text('Inicia sesion', style: TextStyle(
                      color: Colors.white,
                          fontSize: 15.0
                    )),
                    ),
              )

 */