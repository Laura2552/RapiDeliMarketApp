import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Cards/favourites_card.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';

class CollectionDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      height: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.sabervivirtv.com/medio/2022/02/14/los-beneficios-de-los-alimentos-por-su-color_35cb0cff_1280x720.jpg')),
                  Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 1.3),
                          borderRadius: BorderRadius.circular(10)),
                      width: double.infinity,
                      height: double.infinity),
                  Center(
                    child: headerText(
                      texto: 'Vegetales',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      favouritesCard(
                        image: NetworkImage(
                            'https://jumbo.vtexassets.com/arquivos/ids/417442/Lechuga-escarola-un.jpg?v=637486512651670000'),
                        title: "Lechuga escarola",
                        subtitle: "UND",
                        review: "4.5",
                        ratings: "(2 calificaciones)",
                        buttonText: "Envío",
                        hasActionButton: true,
                        isFavourite: true,
                      ),
                      favouritesCard(
                        image: NetworkImage(
                            'https://jumbo.vtexassets.com/arquivos/ids/417442/Lechuga-escarola-un.jpg?v=637486512651670000'),
                        title: "Lechuga escarola",
                        subtitle: "UND",
                        review: "4.5",
                        ratings: "(2 calificaciones)",
                        buttonText: "Envío",
                        hasActionButton: true,
                        isFavourite: false,
                      ),
                    ],
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
