import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Cards/favourites_card.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';

class FavouriteTab extends StatefulWidget{
  FavouriteTab({Key key}) : super(key: key);

  @override
  FavouriteTabState createState ()=> FavouriteTabState();
}

class FavouriteTabState extends State<FavouriteTab>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: bgGrey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Text(''),
            backgroundColor: white,
            title: headerText(texto: '               Mis Favoritos', color: primaryColor, fontSize: 19, fontWeight: FontWeight.bold),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
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