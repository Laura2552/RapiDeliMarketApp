import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Cards/populares_card.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Text(""),
            backgroundColor: orange,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://negociosrentablesfx.com/wp-content/uploads/2017/08/supermercado.jpg'),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1.5)),
                    width: double.infinity,
                    height: 380,
                  ),
                  Wrap(
                    children: [
                      _infoPlace(),
                      _infoPlaceStats()
                    ],
                  )
                ],
              ),
            ),

          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 20),
              child: Column(
                children: [
                  _topBar(context),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'place-detail');
                      },
                      child: _header(
                          context, "Conoce nuestros productos", "Ver mas")),
                  _sliderCards(),
                  _header(context, "Los mas populares hoy", "Ver mas"),
                  popularesCard(
                      image: NetworkImage(
                          'https://almacen.do/wp-content/uploads/2020/12/Chips-Tostitos-Santa-Elena_-15-oz-Front.jpg'),
                      title: "Tostitos Santa Elena",
                      subtitle: "Funda de tostitos 15oz",
                      review: "4.5",
                      ratings: "(2 calificaciones)",
                      buttonText: "Envío",
                      hasActionButton: true),
                  popularesCard(
                      image: NetworkImage(
                          'https://almacen.do/wp-content/uploads/2020/12/Chips-Tostitos-Santa-Elena_-15-oz-Front.jpg'),
                      title: "Tostitos Santa Elena",
                      subtitle: "Funda de tostitos 15oz",
                      review: "4.5",
                      ratings: "(2 calificaciones)",
                      buttonText: "Envío",
                      hasActionButton: true),
                  popularesCard(
                      image: NetworkImage(
                          'https://almacen.do/wp-content/uploads/2020/12/Chips-Tostitos-Santa-Elena_-15-oz-Front.jpg'),
                      title: "Tostitos Santa Elena",
                      subtitle: "Funda de tostitos 15oz",
                      review: "4.5",
                      ratings: "(2 calificaciones)",
                      buttonText: "Envío",
                      hasActionButton: true),
                  SizedBox(height: 10.0),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'collections');
                      },
                      child: _header(context, "Colecciones", "Ver mas")),
                  _sliderCollections()
                ],
              ),
            )
          ]))
        ],
      )),
    );
  }
}

Widget _infoPlace() {
  return Column(children: [
    Container(
      padding: EdgeInsets.only(right: 65.0),
      margin: EdgeInsets.only(top: 130.0),
      child: headerText(
          texto: "Rapi Deli-Market",
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 35.0),
    ),
    Container(
        padding: EdgeInsets.only(left: 25.0),
        margin: EdgeInsets.only(top: 10.0),
        child: Row(
          children: [
            Icon(Icons.location_on, color: gris),
            headerText(
                texto: "C. Francisco Villaespesa, Santo\nDomingo 10103",
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          ],
        ))
  ]);
}

Widget _infoPlaceStats() {
  return Container(
    margin: EdgeInsets.only(top : 60.0),
    padding: EdgeInsets.symmetric(horizontal: 40.0),
    height: 70.0,
    decoration: BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.white),
            bottom: BorderSide(color: Colors.white) ) ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment. start,
          children: [
            Row(children: [
              Icon(
                Icons.star,
                color: Colors.white,
                size: 19.0,
              ),
              headerText(texto: '  4.5', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0)
            ]),
            headerText(texto: '348 calificaciones', color: gris, fontWeight: FontWeight.w500, fontSize: 15.0)
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 15.0),
        height: 35,
        decoration: BoxDecoration (
            border: Border (right: BorderSide (color : Colors.white))) ,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment. start,
          children: [
            Row(children: [
              Icon(
                Icons.photo_library,
                color: Colors.white,
                size: 19.0,
              ),
              Container(
                  margin: EdgeInsets.only(right: 40.0),
                  child: headerText(texto: '  300', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0))
            ]),
            headerText(texto: 'Imágenes', color: gris, fontWeight: FontWeight.w500, fontSize: 15.0)
          ],
        ),
      ],
    ),
  );
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'search'),
        child: Container(
          width: 320,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 20.0,
                color: gris,
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(
                  'Buscar',
                  style: TextStyle(color: gris, fontSize: 17.0),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
          width: 35.0,
          height: 35.0,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Color.fromRGBO(209, 209, 214, 1.0),
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
              icon: Icon(
                Icons.filter_list,
                size: 20,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'filter');
              }))
    ],
  );
}

Widget _sliderCards() {
  return Container(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjeta(context);
            });
      },
    ),
  );
}

Widget _tarjeta(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'place-detail');
    },
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
                width: 195.0,
                height: 230.0,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1622483767028-3f66f32aef97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGNvY2ElMjBjb2xhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60')),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text("Coca-Cola",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Coca-cola de lata, paquete de 6",
                    style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: amarillo, size: 16),
                  Text("4.8",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  Text(" (87 calificaciones)",
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  /*   Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: 75.0,
                    height: 18.0,
                    child: RaisedButton(
                        elevation: 0.5,
                        shape: StadiumBorder(),
                        color: orange,
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text('Enviar', style: TextStyle(fontSize: 11.0))),
                  )*/
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget _header(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        height: 70.0,
        alignment: Alignment.centerLeft,
        child:
            headerText(texto: textHeader, color: Colors.black, fontSize: 22.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ),
            Icon(Icons.play_arrow, size: 15.0)
          ],
        ),
      ),
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    height: 300.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjetaCollection(context);
            });
      },
    ),
  );
}

Widget _tarjetaCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
              width: 300,
              height: 150,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://farm9.staticflickr.com/8450/8049203204_391cec612b.jpg')),
        ),
      ],
    ),
  );
}
