import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Alerts/alert_dialog.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
//import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
//import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
//import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';

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
                headerText(
                    texto:'¿Ha olvidado su contraseña?', color: primaryColor, fontSize: 27.3),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    'Por favor ingrese su correo electronico. Recibira un enlace para crear una nueva contraseña via email.',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              ),
              _emailInput(),
              createButton(
                buttonColor: orange,
                shape: StadiumBorder(),
                labelButton: 'Enviar',
                func: () => _showAlerta(context))
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

void _showAlerta(BuildContext context) {
  showAlertDialog(
    context,
    AssetImage('assets/seguridad.png'),
    'Tu contraseña ha sido restaurada',
    'En poco tiempo recibiras un email con un codigo para configurar tu nueva contraseña.',
    createButton(
        labelButton: 'Aceptar',
        buttonColor: orange,
        shape: StadiumBorder(),
        func: () {
          Navigator.pushNamed(context, 'login');
        }),

    //doneButton(context, "Aceptar")
  );
}
