import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:rapideli_market_app/src/features/presentation/profile_detail_page/View/components/avatar_view.dart';
import 'package:rapideli_market_app/src/features/presentation/profile_detail_page/View/components/textfields_view.dart';
import 'package:rapideli_market_app/src/utils/Extensions/screen_size.dart';
import 'package:rapideli_market_app/src/utils/styles/box_decoration_shadows.dart';

class ProfileDetailPage extends StatefulWidget {
  @override
  _ProfileDetailPageState createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: headerText(texto: '                   Editar Perfil', fontSize: 17),
        backgroundColor: white,
        elevation: 0.4,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 15.0),
              child: headerText(
                texto: 'Guardar',
                color: orange,
                fontWeight: FontWeight.bold,
                fontSize: 17.0)),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
            [
              Container(
                margin: EdgeInsets.only(top: screenHeight.getScreenHeigth(
                    context: context, multiplier: 0.1),
                    left: 15, right: 15),
                decoration: createBoxDecorationWithShadows(),
                width: screenWidth.getScreenWidth(context: context),
                height: screenHeight.getScreenHeigth(
                    context: context, multiplier: 0.75),
                child: Column(
                  children: [
                    Transform.translate(
                      offset: Offset(0, -65),
                      child: AvatarView(
                          backgroundImage: 
                          'https://dam.muyinteresante.com.mx/wp-content/uploads/2018/05/extranos-pueden-elegir-mejores-fotos-de-perfil.jpg'),
                    ),

                    TextFieldsProfileDetailView()
                  ],
                ),
              )
            ]
          ))
        ],
      ),
    );
  }
}
