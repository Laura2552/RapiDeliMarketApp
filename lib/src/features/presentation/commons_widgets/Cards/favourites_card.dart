import 'package:flutter/material.dart';

import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';

Widget favouritesCard({
    BuildContext context,
    double marginTop = 0.0,
    double marginRight = 0.0,
    double marginBottom = 0.0,
    double marginLeft = 10.0,
    ImageProvider<Object> image,
    String title,
    String subtitle,
    String review,
    String ratings,
    String buttonText = '',
    bool hasActionButton,
    bool isFavourite = true}) {
  return Container(
    margin: EdgeInsets.only(
        top: marginTop,
        right: marginRight,
        bottom: marginBottom,
        left: marginLeft
    ),
    padding: EdgeInsets.only (left: 20, top: 20, bottom: 20),
    width: double.infinity,
    child: Row(
      children: [
        ClipRRect (
          borderRadius: BorderRadius.circular(10.0),
          child:
          Image(width: 90.0, height: 90.0, fit: BoxFit.cover, image: image),
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0) ,
                      child: headerText(
                          texto: title,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17)),
                          SizedBox(width: 25.0,),
                  IconButton(
                      icon: Icon(Icons.bookmark, size: 35.0, color: isFavourite ? rosa : Colors.grey[300],),
                      onPressed: (){}
                  )
                ],
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: headerText(texto: subtitle, color: gris, fontWeight: FontWeight.w500, fontSize: 13.0)
              ),
            ],
          ),
        )
      ],
    ),
  );
}
