import 'dart:ui';
import 'package:flutter/material.dart';
import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/login_page/View/login_page.dart';

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
                child: Text('PRODUCTOS DE CALIDAD, A LA PUERTA DE TU CASA', style: TextStyle(
                 color: Colors.white,
                    fontWeight: FontWeight.bold,
                  fontSize: 45.0
                )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text('Proporcione la ubicacion exacta para un servicio mas rapido.', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0
                )),
              ),
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
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  color: Theme.of(context).buttonColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/face.png'),
                      width: 20.0,
                      height: 20.0
                      ),

                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Text('Conectar con facebook', style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0
                      )),
                    )
                    ],
                  )),
                ),
            ],
          )
        ],
      ),
    );
  }
}