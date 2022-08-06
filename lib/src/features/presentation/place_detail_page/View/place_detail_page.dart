import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_double.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';

class PlaceDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            backgroundColor: orange,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            label: headerText(
                texto: 'Agregar al carrito RD\$570',
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17)),
        body: CustomScrollView(slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 20),
                child: Column(children: [
                  _headers(texto: 'Populares'),
                  _sliderCards(),
                  _headers(texto: 'Todas las categorías'),
                  _menuList(context),
                  SizedBox(height: 40.0)
                ]),
              )
            ]),
          )
        ]));
  }
}

Widget _headers({texto: String}) {
  return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: headerDoubleText(textHeader: texto, textAction: ''));
}

Widget _sliderCards() {
  return Container(
      height: 290.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _cards();
          }));
}

Widget _cards() {
  return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image(
              width: 190.0,
              height: 190.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://almacen.do/wp-content/uploads/2020/12/Chips-Tostitos-Santa-Elena_-15-oz-Front.jpg')),
        ),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: headerText(
                texto: "Tostitos Santa Elena",
                fontWeight: FontWeight.bold,
                fontSize: 15.0)),
        Container(
            //  alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(right: 80.0),
            child: headerText(
                texto: "RD\$180",
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
                color: gris)),
        Row(children: [
          Container(
            margin: EdgeInsets.only(top: 10, right: 30),
            child: headerText(
                texto: "Selecciona",
                fontWeight: FontWeight.w500,
                fontSize: 15.0,
                color: orange),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20),
            child: Image(
                width: 20.0,
                height: 20.0,
                fit: BoxFit.cover,
                image: AssetImage('assets/plus_order.png')),
          )
        ])
      ]));
}

Widget _menuList(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 10.0),
    child: Column(
      children: [
        _menuItem(context, 'Vegetales', '2'),
        _menuItem(context, 'Dulces', '5'),
        _menuItem(context, 'Frutas', '10'),
        _menuItem(context, 'Enlatados', '7')
      ],
    ),
  );
}

Widget _menuItem(BuildContext context, String texto, String itemCount) {
  return Container(
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: gris))),
    child: Column(
      children: [
        ListTile(
          title: headerText(
              texto: texto, fontWeight: FontWeight.w300, fontSize: 17.0),
          trailing: headerText(
              texto: itemCount, fontWeight: FontWeight.w300, fontSize: 17.0),
        ),
        _sliderCards()
      ],
    ),
  );
}
