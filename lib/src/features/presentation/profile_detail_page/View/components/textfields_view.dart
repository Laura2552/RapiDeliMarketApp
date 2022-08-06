import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/utils/Extensions/screen_size.dart';

class TextFieldsProfileDetailView extends StatelessWidget {
  //const TextFieldsProfileDetailView ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _createTextFieldUsername(context),
          _createTextFieldEmail(context),
          _createTextFieldPhone(context),
          _createTextFieldDateOfBirth(context),
          _createTextFieldDeliveryAdress(context)
        ],
      ),
    );
  }
}

Widget _createTextFieldUsername(BuildContext context) {
  return Container(
    width: screenHeight.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldEmail(BuildContext context) {
  return Container(
    width: screenHeight.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
        Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Nombre de suario',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldPhone(BuildContext context) {
  return Container(
    width: screenHeight.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
        Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Telefono',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldDateOfBirth(BuildContext context) {
  return Container(
    width: screenHeight.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
        Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
            hintText: 'Fecha de nacimiento',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldDeliveryAdress(BuildContext context) {
  return Container(
    width: screenHeight.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border:
        Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        maxLines: 3,
        decoration: InputDecoration(
            hintText: 'Direccion de envio',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}