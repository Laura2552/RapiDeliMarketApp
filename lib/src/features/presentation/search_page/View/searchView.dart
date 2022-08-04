import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/commons_widgets/Cards/card_vertical.dart';
import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/commons_widgets/Headers/header_double.dart';
import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/commons_widgets/Cards/populares_card.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 40.0,
                ),
                onPressed: () => Navigator.pop(context)),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20.0),
                      alignment: Alignment.centerLeft,
                      child: headerText(
                          texto: 'Buscar',
                          color: Colors.black,
                          fontSize: 30.0)),
                  _searchInput(context),
                  SizedBox(
                    height: 40.0,
                  ),
                  headerDoubleText(
                      textHeader: 'Búsquedas recientes',
                      textAction: 'Limpiar todo'),
                  _sliderRecentSearch(),
                  SizedBox(height: 20.0),
                  headerDoubleText(
                      textHeader: 'Recomendados para ti', textAction: ''),
                  SizedBox(height: 20.0),
                  popularesCard(
                      image: NetworkImage(
                          'https://almacen.do/wp-content/uploads/2020/12/Chips-Tostitos-Santa-Elena_-15-oz-Front.jpg'),
                      title: "Tostitos Santa Elena",
                      subtitle: "Funda de tostitos 15oz",
                      review: "4.5",
                      ratings: "(2 calificaciones)",
                      hasActionButton: false),
                  popularesCard(
                      image: NetworkImage(
                          'https://almacen.do/wp-content/uploads/2020/12/Chips-Tostitos-Santa-Elena_-15-oz-Front.jpg'),
                      title: "Tostitos Santa Elena",
                      subtitle: "Funda de tostitos 15oz",
                      review: "4.5",
                      ratings: "(2 calificaciones)",
                      hasActionButton: false),
                  popularesCard(
                      image: NetworkImage(
                          'https://almacen.do/wp-content/uploads/2020/12/Chips-Tostitos-Santa-Elena_-15-oz-Front.jpg'),
                      title: "Tostitos Santa Elena",
                      subtitle: "Funda de tostitos 15oz",
                      review: "4.5",
                      ratings: "(2 calificaciones)",
                      hasActionButton: false),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40.0,
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5.0),
          prefixIcon: Icon(Icons.search, color: gris),
          hintText: 'Buscar',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sliderRecentSearch() {
  return Container(
    margin: EdgeInsets.only(top: 5.0),
    height: 190.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return cardVertical(
                context: context,
                width: 160.0,
                height: 120.0,
                title: "Palomitas de maíz extra mantequilla",
                subtitle: "RapiDeliMarket",
                image: NetworkImage(
                    'https://eliasacostaycia.com.co/wp-content/uploads/2020/02/ACT-II-Mantequilla-Extra.png'),
              );
            });
      },
    ),
  );
}
