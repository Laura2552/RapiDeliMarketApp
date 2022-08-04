import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
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
          )
        ],
      ),
    );
  }
}