import 'package:flutter/material.dart';

const shape = StadiumBorder();

Widget createButton(
    {BuildContext context,
    double width = 350.0,
    double height = 45.0,
    double radius = 20.0,
    bool isWithIcon = false,
    ImageProvider<Object> icon,
    String labelButton,
    Color color,
      OutlinedBorder shape = shape,
    Function func}) {
  return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(top: 20.0),
      child: isWithIcon
          ? _raisedButtonWithIcon(radius, icon, labelButton, color, shape, func)
          : _raisedButtonNotIcon(radius, labelButton, color, shape, func)
  );
}

Widget _raisedButtonWithIcon(double radius, ImageProvider<Object> icon, String labelButton, Color color, OutlinedBorder shape, Function func){
  return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        shape: shape,
          primary: color
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              image: icon,
              width: 20.0,
              height: 20.0),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(labelButton,
                style: TextStyle(color: Colors.white, fontSize: 15.0)),
          )
        ],
      ));
}

Widget _raisedButtonNotIcon(double radius, String labelButton, Color color, OutlinedBorder shape, Function func){
  return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
          shape: shape,
          primary: color
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(labelButton,
                style: TextStyle(color: Colors.white, fontSize: 15.0)),
          )
        ],
      )
  );

}
