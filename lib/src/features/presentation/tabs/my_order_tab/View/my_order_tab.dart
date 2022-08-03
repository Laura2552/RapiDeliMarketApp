import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/header_text.dart';
import 'package:rapideli_market_app/src/features/presentation/tabs/my_order_tab/View/components/empty_Order_view.dart';

class MyOrderTab extends StatefulWidget{
  MyOrderTab({Key key}) : super(key: key);

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
            title: Center(child: headerText(texto: 'Mi pedido', color: primaryColor, fontSize: 20, fontWeight: FontWeight.w800)),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                children: [
                  _orders(context)
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
    padding: EdgeInsets.all(10.0),
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
        )
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
          child: headerText(texto: "Little creatures - Club Street", fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_on, color: gris, size: 16.0),
              headerText(texto: "87 Botsford Circle Apt", color: gris, fontWeight: FontWeight.w500, fontSize: 13.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                width: 110.0,
                height: 20.0,
                child: RaisedButton(
                  elevation: 0.5,
                  shape: StadiumBorder(),
                  color: orange,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: headerText(texto: 'Free Delivery', fontSize: 11),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}