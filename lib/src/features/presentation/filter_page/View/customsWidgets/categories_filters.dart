import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';

class CategoriesFilter extends StatefulWidget {
  CategoriesFilter({Key key}) : super(key: key);

  @override
  _CategoriesFilterState createState() => _CategoriesFilterState();
}

class _CategoriesFilterState extends State<CategoriesFilter> {
  bool btnGranos = false;
  bool btnVegetales = false;
  bool btnEnlatados = false;
  bool btnVerduras = false;

  bool btnEmbutidos = false;
  bool btnDulces = false;
  bool btnPicaderas = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _roundedButtonFilter((){
              setState(() => btnGranos = !btnGranos);
            }, btnGranos, 'Granos'),
            _roundedButtonFilter((){
              setState(() => btnVegetales = !btnVegetales);
            }, btnVegetales, 'Vegetales'),
            _roundedButtonFilter((){
              setState(() => btnDulces = !btnDulces);
            }, btnDulces, 'Dulces'),
            _roundedButtonFilter((){
              setState(() => btnVerduras = !btnVerduras);
            }, btnVerduras, 'Verduras'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            _roundedButtonFilter((){
              setState(() => btnEmbutidos = !btnEmbutidos);
            }, btnEmbutidos, 'Embutidos'),
            _roundedButtonFilter((){
              setState(() => btnEnlatados = !btnEnlatados);
            }, btnEnlatados, 'Enlatados'),
            _roundedButtonFilter((){
              setState(() => btnPicaderas = !btnPicaderas);
            }, btnPicaderas, 'Picaderas'),]
        )
      ],
    );
  }
}

Widget _roundedButtonFilter(Function func, bool isActive, String labelText){
  return RaisedButton(
    onPressed: func,
    elevation: 0.5,
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
      side: BorderSide(
          color: isActive ? orange : gris)
    ),
    child: Text(
      labelText,
      style: TextStyle(
        color: isActive ? orange : gris
      ),
    ),
  );
}
