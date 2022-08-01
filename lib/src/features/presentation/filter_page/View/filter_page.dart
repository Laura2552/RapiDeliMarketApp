import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/header_text.dart';
import 'package:rapideli_market_app/src/features/presentation/filter_page/View/customsWidgets/categories_filters.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key key}) : super(key: key);

  @override
  FilterPageState createState() => FilterPageState();
}

class FilterPageState extends State<FilterPage> {
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
                    margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
                    child: headerText(
                      texto: 'CATEGORIAS',
                      color: gris,
                      fontWeight: FontWeight.w600,
                      fontSize: 17.0
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: CategoriesFilter())
                ]
            ))
      ]),
    );
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
