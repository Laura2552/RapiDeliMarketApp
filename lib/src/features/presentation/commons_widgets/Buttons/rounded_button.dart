import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';

const shape = StadiumBorder();

Widget createButton(
    {required BuildContext context,
    double width = 350.0,
    double height = 45.0,
    double radius = 20.0,
    bool isWithIcon = false,
    ImageProvider<Object>? icon,
    required String labelButton,
      Color labelButtonColor = Colors.white,
      double labelFontSize = 15.0,
    Color buttonColor = Colors.blue,
      OutlinedBorder shape = shape,
    Function()? func}) {
  return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(top: 20.0),
      child: isWithIcon
          ? _raisedButtonWithIcon(radius, icon!, labelButton, labelButtonColor, labelFontSize, buttonColor, shape, func)
          : _raisedButtonNotIcon(radius, labelButton, labelButtonColor, labelFontSize, buttonColor, shape, func)
  );
}

Widget _raisedButtonWithIcon(
    double radius,
    ImageProvider<Object> icon,
    String labelButton,
    Color labelButtonColor,
    double labelFontSize,
    Color color,
    OutlinedBorder shape,
    Function()? func ) {
  return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        shape: shape,
          primary: color,
        elevation: 0.5
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              image: icon,
              width: 20.0,
              height: 20.0),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: headerText(
                texto: labelButton,
                color: labelButtonColor,
                fontSize: labelFontSize,
                fontWeight: FontWeight.bold))
        ],
      ));
}

Widget _raisedButtonNotIcon(double radius, String labelButton, Color labelButtonColor, double labelFontSize, Color color, OutlinedBorder shape, Function()? func){
  return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
          shape: shape,
          primary: color,
          elevation: 0.5
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 1.0),
            padding: EdgeInsets.only(left: 2.0),
            child: headerText(
                texto: labelButton,
                color: labelButtonColor,
                fontSize: labelFontSize,
                fontWeight: FontWeight.bold))
        ],
      )
  );

}
