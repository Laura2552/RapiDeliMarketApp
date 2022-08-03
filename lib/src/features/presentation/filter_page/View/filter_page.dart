import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/header_text.dart';
import 'package:rapideli_market_app/src/features/presentation/filter_page/View/customsWidgets/categories_filters.dart';
import 'package:rapideli_market_app/src/features/presentation/filter_page/View/customsWidgets/list_tile_checked.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key key}) : super(key: key);

  @override
  FilterPageState createState() => FilterPageState();
}

class FilterPageState extends State<FilterPage> {
//Sort by
  bool mostpopular = false;
  bool toprated = false;
  bool pickedforyou = false;
//Filters
  bool deals= false;
  bool vegetarians= false;
  bool coupon= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: CustomScrollView(slivers: <Widget>[
        SliverList(
            delegate: SliverChildListDelegate(
                [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        top: 15.0, bottom: 15.0, left: 15.0),
                    child: headerText(
                        texto: 'CATEGORIAS',
                        color: gris,
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: CategoriesFilter()),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(
                          top: 15.0, bottom: 15.0, left: 15.0),
                      child: headerText(
                          texto: 'ORDENAR POR',
                          color: gris,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0)
                  ),
                  _sortByContainer(),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(
                          top: 15.0, bottom: 15.0, left: 15.0),
                      child: headerText(
                          texto: 'Filtros',
                          color: gris,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0)
                  ),
                  _filterContainer(),
                ]
            ))
      ]),
    );
  }

  Widget _sortByContainer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTileCheck(
              texto: 'Más calificados',
              isActive: toprated,
              func: () {
                setState(() => toprated = !toprated);
              },
            ),
            ListTileCheck(
              texto: 'Más populares',
              isActive: mostpopular,
              func: () {
                setState(() => mostpopular = !mostpopular);
              },
            ),
            ListTileCheck(
              texto: 'Elegidos para ti',
              isActive: pickedforyou,
              func: () {
                setState(() => pickedforyou = !pickedforyou);
              },
            ),
          ],
        ));
  }

  Widget _filterContainer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            ListTileCheck(
              texto: 'Ofertas',
              isActive: deals,
              func: () {
                setState(() => deals = !deals);
              },
            ),
            ListTileCheck(
              texto: 'Acepta cupones',
              isActive: coupon,
              func: () {
                setState(() => coupon = !coupon);
              },
            ),
            ListTileCheck(
              texto: 'Vegetarianos',
              isActive: vegetarians,
              func: () {
                setState(() => vegetarians = !vegetarians);
              },
            ),
          ],
        ));
  }
}

Widget _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    title: Center(
      child: headerText(texto: 'Filtros', fontWeight: FontWeight.w600),
    ),
    leading: Container(
        padding: EdgeInsets.only(top: 20, left: 10.0),
        child: headerText(
            texto: 'Reset', fontWeight: FontWeight.w500, fontSize: 17.0)),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
            padding: EdgeInsets.only(top: 20, right: 10.0),
            child: headerText(
                texto: 'Aceptar',
                color: orange,
                fontWeight: FontWeight.w500,
                fontSize: 17.0)),
      )
    ],
  );
}
