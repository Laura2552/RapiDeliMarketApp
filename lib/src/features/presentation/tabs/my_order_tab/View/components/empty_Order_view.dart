import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/commons_widgets/Headers/header_text.dart';

class EmptyOrderView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      appBar: AppBar(
        elevation: 0.5,
        leading: Text(''),
        backgroundColor: white,
        title: Center(child: headerText(texto: 'Mi pedido', color: primaryColor, fontSize: 20, fontWeight: FontWeight.w800)),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 216,
                  height: 216,
                  image: AssetImage('assets/carEmpty.png')),
              Container(
                margin: EdgeInsets.only(top: 30),
                  child: headerText(texto: 'Carrito vacio', color: gris, fontSize: 25, fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Center(
                  child: headerText(
                      texto: '¡Tenemos una amplia variedad de productos! sigue adelante y ordena algunos articulos deliciosos de nuestra seleccion especial.',
                      color: gris,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
