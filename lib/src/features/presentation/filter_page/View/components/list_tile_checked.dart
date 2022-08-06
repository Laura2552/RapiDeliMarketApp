import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
//import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Headers/header_text.dart';

@immutable
class ListTileCheck extends StatefulWidget {
  final String texto;
  final bool isActive;
  final Function func;

  ListTileCheck({Key key, this.texto, this.isActive, this.func})
      : super(key: key);

  @override
  _ListTileCheckState createState() => _ListTileCheckState();
}

class _ListTileCheckState extends State<ListTileCheck> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTiles(
          context: context,
          texto: widget.texto,
          isActive: widget.isActive,
          func: widget.func)
    ]);
  }
}

// ignore: non_constant_identifier_names
Widget ListTiles(
    {BuildContext context, texto: String, isActive: bool, Function func}) {
  return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: ListTile(
        onTap: func,
        title: headerText(
            texto: texto,
            color: isActive ? orange : Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 17),
        trailing: isActive
            ? Icon(
                Icons.check,
                color: isActive ? orange : gris,
              )
            : Text(''),
      ));
}
