import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/header_text.dart';

class ProfileTab extends StatefulWidget{
  ProfileTab({Key key}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [_header(), _contentProfile()],
      ),
    );
  }
}

Widget _header() {
  return Container(
    height: 245,
    color: bgGrey,
    padding: EdgeInsets.all(39),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://dam.muyinteresante.com.mx/wp-content/uploads/2018/05/extranos-pueden-elegir-mejores-fotos-de-perfil.jpg'
          ),
          radius: 43,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  headerText(texto: 'Jennifer Perez', color: Colors.black, fontWeight: FontWeight.w600 , fontSize: 25),
                  IconButton(
                      icon: Icon(Icons.chevron_right, color: gris),
                      onPressed: () {})
                ],
              ),
            ),
            Container(
              height: 25,
              margin: EdgeInsets.only(left: 11.0),
              child: RaisedButton(
                onPressed: () {},
                color: rosa,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Image(
                        image: AssetImage('assets/crown.png.png'),
                        width: 16,
                        height: 16),
                    Container(
                      margin: EdgeInsets.only(left: 1),
                      child: headerText(texto: 'Miembro VIP', color: Colors.white, fontWeight: FontWeight.normal, fontSize: 11),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _contentProfile() {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        ListTile(
          leading: Image(
            image: AssetImage('assets/notification.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(texto: 'Notificaciones', color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/pago.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(texto: 'Metodos de pago', color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/gift_credit.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(texto: 'Historial', color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/code.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(texto: 'Codigo de promo', color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        SizedBox(height: 10),
        ListTile(
          leading: Image(
            image: AssetImage('assets/settings.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(texto: 'Configuracion', color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/invite.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(texto: 'Invitar amigos', color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),
          trailing: Icon(Icons.chevron_right, color: gris,)),
        ListTile(
          leading: Image(
            image: AssetImage('assets/help.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(texto: 'Centro de ayuda', color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('assets/us.png'),
            width: 29,
            height: 29,
          ),
          title: headerText(texto: 'Nosotros', color: Colors.black, fontWeight: FontWeight.w400, fontSize: 17),
          trailing: Icon(Icons.chevron_right, color: gris,),
        )
      ],
    ),
  );
}