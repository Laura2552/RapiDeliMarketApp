import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//UI
import 'package:flutter/services.dart';
//color
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
//widgets
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                  width: double.infinity,
                  height: 350.0,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://img.freepik.com/fotos-premium/mesa-madera-superior-vacia-supermercado-desenfoque-fondo_36051-467.jpg?w=2000')),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: backButton(context, Colors.white),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child: Container(
              width: double.infinity,
              //height: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text("Bienvenido",
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0)),
                      Text("Inicia sesion en tu cuenta",
                          style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0)),
                      _emailInput(),
                      _passwordInput(),
                      createButton(
                        context: context,
                          buttonColor: orange,
                          labelButton: 'Iniciar sesion',
                          func: () {
                            Navigator.pushNamed(context, 'tabs');
                          }),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'forgot-password');
                          },
                          child: Text('¿Olvidaste tu contraseña?',
                              style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.0)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('¿No tienes una cuenta?',
                                style: TextStyle(
                                    color: gris,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'sign-up');
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text('Registrate',
                                    style: TextStyle(
                                        color: orange,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    //margin: EdgeInsets.only(top: 30.0),
    //padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}
