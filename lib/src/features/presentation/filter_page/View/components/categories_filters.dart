import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';

class CategoriesFilter extends StatefulWidget {
  CategoriesFilter({Key? key}) : super(key: key);

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            children: [
              _roundedButtonFilter((){
                setState(() => btnGranos = !btnGranos);
              }, btnGranos, 'Granos', context),
              _roundedButtonFilter((){
                setState(() => btnVegetales = !btnVegetales);
              }, btnVegetales, 'Vegetales', context),
              _roundedButtonFilter((){
                setState(() => btnDulces = !btnDulces);
              }, btnDulces, 'Dulces', context),
              _roundedButtonFilter((){
                setState(() => btnVerduras = !btnVerduras);
              }, btnVerduras, 'Verduras', context),
              _roundedButtonFilter((){
                setState(() => btnEmbutidos = !btnEmbutidos);
              }, btnEmbutidos, 'Embutidos', context),
              _roundedButtonFilter((){
                setState(() => btnEnlatados = !btnEnlatados);
              }, btnEnlatados, 'Enlatados', context),
              _roundedButtonFilter((){
                setState(() => btnPicaderas = !btnPicaderas);
              }, btnPicaderas, 'Picaderas', context)
            ],
          ),
        ),
      ],
    );
  }
}

Widget _roundedButtonFilter(Function()? func, bool isActive, String labelText, BuildContext context){
  return Container(
    width: 110,
    height: 53,
    margin: EdgeInsets.symmetric(horizontal: 7),
    child: createButton(
      context: context,
      labelButton: labelText,
      labelButtonColor: isActive ? orange : gris,
      func: func,
      buttonColor: white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: isActive ? orange : gris)),
    ),
  );

  /*createButton(
    labelButton: labelText,
    labelButtonColor: isActive ? orange : gris,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
      side: BorderSide(color: isActive ? orange : gris)));*/

}