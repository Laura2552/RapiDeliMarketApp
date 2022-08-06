import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
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
            _roundedButtonFilter((){
              setState(() => btnEmbutidos = !btnEmbutidos);
            }, btnEmbutidos, 'Embutidos'),
            _roundedButtonFilter((){
              setState(() => btnEnlatados = !btnEnlatados);
            }, btnEnlatados, 'Enlatados'),
            _roundedButtonFilter((){
              setState(() => btnPicaderas = !btnPicaderas);
            }, btnPicaderas, 'Picaderas')
          ],
        ),
      ],
    );
  }
}

Widget _roundedButtonFilter(Function func, bool isActive, String labelText){
  return Container(
    width: 104,
    height: 45,
    margin: EdgeInsets.all(1),
    child: createButton(
        labelButton: labelText,
        labelButtonColor: isActive ? orange : gris,
        func: func,
        buttonColor: white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
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
