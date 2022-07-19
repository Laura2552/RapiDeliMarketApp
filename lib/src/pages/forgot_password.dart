import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/widgets/back_button.dart';

class ForgotPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton((context), Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text('¿Ha olvidado su contraseña?',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 30.0)),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Por favor ingrese su correo electronico. Recibira un enlace para crear una nueva contraseña via email.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              ),
              _emailInput(),
              _sendButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Tu email',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sendButton(BuildContext context) {
  return Container(
    width: 370.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 40.0),
    child: RaisedButton(
        onPressed: () {
          _showAlerta(context);
        }, 
      color: Theme.of(context).accentColor, 
      child: Text(
        'Enviar',
        style: TextStyle(color: Colors.white, fontSize: 17.0),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    ));
}

void _showAlerta(BuildContext context){
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 400,
            child: Column(
              children: [
                Image(image: AssetImage('assets/seguridad.png'),
                width: 130,
                height: 130,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text('Tu contraseña ha sido restaurada',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text('En poco tiempo recibiras un email con un codigo para configurar tu nueva contraseña.',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0 )),
                ),
                _doneButton(context)
              ],
            ),
          ),
        );
      }
  );
}

Widget _doneButton(BuildContext context) {
  return Container(
      width: 370.0,
      height: 45.0,
      margin: EdgeInsets.only(top: 40.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'login');
        },
        color: Theme.of(context).accentColor,
        child: Text(
          'Aceptar',
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ));
}