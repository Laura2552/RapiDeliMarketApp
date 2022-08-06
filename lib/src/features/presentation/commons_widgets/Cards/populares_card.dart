import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';

Widget popularesCard(
    {BuildContext context,
    double marginTop = 0.0,
    double marginRight = 0.0,
    double marginBottom = 0.0,
    double marginLeft = 10.0,
    ImageProvider<Object> image,
    String title,
    String subtitle,
    String review,
    String ratings,
    String buttonText = "",
    bool hasActionButton}) {
  return Column(children: [
    Container(
        margin: EdgeInsets.only(
            top: marginTop,
            right: marginRight,
            bottom: marginBottom,
            left: marginLeft),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                  width: 80.0, height: 80.0, fit: BoxFit.cover, image: image),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: Text(title,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0)),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: amarillo, size: 16.6),
                      Text(
                        review,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          ratings,
                          style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        width: 110.0,
                        height: 18.0,
                        child: hasActionButton
                            ? createButton(
                                buttonColor: orange,
                                labelButton: buttonText,
                                labelFontSize: 11.0)
                            : Text(''),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ))
  ]);
}
