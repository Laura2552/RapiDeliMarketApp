import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/header_text.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
            slivers: [SliverList(delegate: SliverChildListDelegate([
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      children: [
                        _topBar(context),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 5.0),
                          alignment: Alignment.centerLeft,
                          child: headerText('Conoce nuestros productos', Colors.black, FontWeight.bold, 30.0),
                        ),
                        _sliderCards(),
                        _header(context, "Los mas populares hoy", "Ver mas"),
                        _populares(context, 'https://almacen.do/wp-content/uploads/2020/12/Chips-Tostitos-Santa-Elena_-15-oz-Front.jpg'),
                        _populares(context, 'https://images.heb.com/is/image/HEBGrocery/002012107?fit=constrain,1&wid=800&hei=800&fmt=jpg&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0'),
                        _populares(context, 'https://almacen.do/wp-content/uploads/2020/12/Tostitos-Medium-Chunky-Salsa_-15.5-oz-Front.jpg')
                      ],
                    ),
                  )

                ]
            )
            )
            ]));
  }
}

Widget _topBar(BuildContext context) {
  return Scaffold(
    body: Row(
      children: [
        Container(
          width: 280,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 20.0,
                color: gris,
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Text('Buscar', style: TextStyle(
                  color: gris,
                  fontSize: 17.0
                )),
              )
            ],
          ),
        ),

        Container(
          width: 30.0,
          height: 30.0,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Color.fromRGBO(209, 209, 214, 1.0),
            borderRadius: BorderRadius.circular(30)),
           child: IconButton(
             icon: Icon(
               Icons.filter_list,
               size: 10,
               color: Colors.white,
             ),
             onPressed: () {
             }),
          ),
        //)
      ],
    ),
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
            }
        );
      },
    ),
  );
}


Widget _tarjeta(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            width: 228.0,
            height: 250.0,
            fit: BoxFit.cover,
            image: NetworkImage('https://images.unsplash.com/photo-1622483767028-3f66f32aef97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGNvY2ElMjBjb2xhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60')
          ),
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
              child: Text("Coco-cola de lata, paquete de 6",
                  style: TextStyle(
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0)),
            ),
            Row(
              children: [
                Icon(Icons.star, color: amarillo, size: 16),
                Text("4.8", style:
                  TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0
                  )),
                Text(" (87 calificaciones)",
                style: TextStyle(
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: 75.0,
                  height: 18.0,
                  child: RaisedButton(
                    elevation: 0.5,
                      shape: StadiumBorder(),
                      color: Theme.of(context).accentColor,
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text('Delivery', style: TextStyle(fontSize: 11.0))
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget _header(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(textHeader, Colors.black, FontWeight.bold, 20.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(textAction, style: TextStyle(
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

Widget _populares(BuildContext context, String foto) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              child: Image(
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                image: NetworkImage(foto)
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: headerText("Tostitos santa elena", Colors.black, FontWeight.bold, 17.0)),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text("Funda de tostitos 15oz",
                  style: TextStyle(
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
                ),
              ),
                Row(

                )
              ],
            )
          ],
        ),
      )
    ],
  );
}
