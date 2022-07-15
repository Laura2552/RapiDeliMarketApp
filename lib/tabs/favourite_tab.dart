import 'package:flutter/material.dart';

class FavouriteTab extends StatefulWidget{
  FavouriteTab({Key key}) : super(key: key);

  @override
  FavouriteTabState createState ()=> FavouriteTabState();
}

class FavouriteTabState extends State<FavouriteTab>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        child: Text('Favourites'),
      ),
    );
  }
}