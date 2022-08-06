import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
//import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';

Widget headerDoubleText({
  required String textHeader,
  required String textAction,
  Function()? func}){
  return Container(
    child: Row(
      children: [
        headerText(texto: textHeader, fontSize: 20.0),
        Spacer(),
        GestureDetector(
          onTap: func,
          child: headerText(
              texto: textAction,
              color: orange,
              fontWeight: FontWeight.w500,
              fontSize: 15.0),
        )
    ],),
  );
}