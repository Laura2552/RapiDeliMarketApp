
import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';

import '../Headers/header_text.dart';

Future showAlertDialog(
    BuildContext context,
    ImageProvider<Object> imagePath,
    String headerTitle,
    String headerSubTitle,
    Widget doneButton) async{
    await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 320,
            child: Column(
              children: [
                Image(
                  image: imagePath,
                  width: 130,
                  height: 130,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: headerText(texto: headerTitle,
                      color: primaryColor, fontSize: 20.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: Text(
                      headerSubTitle,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0 )),
                ),
                doneButton
              ],
            ),
          ),
        );
      }
  );
}

