//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:rapideli_market_app/src/features/presentation/tabs/my_order_tab/View/components/empty_Order_view.dart';

class MyOrderTab extends StatefulWidget{
  MyOrderTab({Key? key}) : super(key: key);

  @override
  _MyOrderTabState createState ()=> _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab>{
  final emptyOrderState = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: bgGrey,
      body: emptyOrderState ? EmptyOrderView() : CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0.5,
            leading: Text(''),
            backgroundColor: white,
            title: headerText(texto: '                 Mi pedido', color: primaryColor, fontSize: 20, fontWeight: FontWeight.w800)),
          SliverList(delegate: SliverChildListDelegate(
            [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                children: [
                  _orders(context),
                  SizedBox(height: 30),
                  _checkoutResume(context)
                ],
               ),
              )
            ]
           )
          )
        ],
      ),

    );
  }
}

Widget _orders(BuildContext context) {
  return Column(
    children: [
      _carOrders(context)
    ],
  );
}

Widget _carOrders(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color.fromRGBO(248, 248, 248, 1.0),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1.0),
          spreadRadius: 1.0,
          blurRadius: 4.0)
      ]
    ),
    child: Column(
      children: [
        Row(
          children: [_cardOrderTopContent()],
        ),
        Column(
          children: [
            _items(context),
            _items(context),
            _items(context),
            _items(context)
          ],
        ),
        _moreContent(context)
      ],
    ),
  );
}

Widget _cardOrderTopContent() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 7.0, bottom: 7.0, right: 20.0),
          child: headerText(texto: "Productos seleccionados", fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Icon(Icons.location_on, color: gris, size: 16.0),
              //headerText(texto: "87 Botsford Circle Apt", color: gris, fontWeight: FontWeight.w500, fontSize: 13.0),

            ],
          ),
        )
      ],
    ),
  );
}

Widget _items(context) {
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor))
    ),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText(texto: 'Tostitos Santa Elena', color: orange, fontWeight: FontWeight.w300, fontSize: 15.0),
          headerText(texto: 'Funda de tostitos 15oz', color: gris, fontWeight: FontWeight.w300, fontSize: 12.0)
        ],
      ),
      trailing: headerText(texto: 'RD\$160.00', color: orange, fontWeight: FontWeight.w300, fontSize: 15.0),
    ),
  );
}

Widget _moreContent(context) {
  return Container(
    child: ListTile(
      title:  headerText(texto: 'Add more items', color: rosa, fontWeight: FontWeight.w600, fontSize: 17.0),

    ),
  );
}

Widget _checkoutResume(context) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1.0),
          spreadRadius: 1.0,
          blurRadius: 4.8
        )
      ]
    ),
    child: Column(
      children: [
        _itemsCheckOutResume(title: 'Subtotal', value: 'RD\$340.00', context: context),
        _itemsCheckOutResume(title: 'Impuestos', value: 'RD\$18.00', context: context),
        _itemsCheckOutResume(title: 'Envio', value: 'RD\$100.00', context: context),
        _buttonCheckOut(context)
      ],
    ),
  );
}

Widget _itemsCheckOutResume({ title: String, value: String, context:BuildContext}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor))
    ),
    child: ListTile(
      title: headerText(texto: title, fontWeight: FontWeight.w400, fontSize: 15.0),
      trailing: headerText(texto: value, fontWeight: FontWeight.w500, fontSize: 15.0),
    ),
  );
}

Widget _buttonCheckOut(context){
  return Container(
    width: double.infinity,
    height: 45.0,
    margin: EdgeInsets.only(top: 10.0),
    child:

    ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        primary: orange,
      ),
      onPressed: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            //margin: EdgeInsets.only(left: 50),
            alignment: Alignment.center,
            child: headerText(
                texto: 'Pedir',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: white),
          ),
          Container(
            child: headerText(
                texto: 'RD\$.458.00',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: white),
          )
        ],
      ),
    ),
  );
}