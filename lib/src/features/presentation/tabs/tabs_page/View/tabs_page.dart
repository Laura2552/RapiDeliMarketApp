import 'package:flutter/material.dart';
import 'package:rapideli_market_app/src/colors/colors.dart';
import 'package:rapideli_market_app/src/features/presentation/commons_widgets/Alerts/alert_dialog.dart';
import 'file:///C:/rapi_delimarket/rapideli_market_app/lib/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:rapideli_market_app/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:rapideli_market_app/src/features/presentation/tabs/favourite_tab/View/favourite_tab.dart';
import 'package:rapideli_market_app/src/features/presentation/tabs/my_order_tab/View/my_order_tab.dart';
import 'package:rapideli_market_app/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _pedirLocation(context);
    });
  }

  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: orange,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _cambiarWidget,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explorar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Mi orden'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favoritos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Perfil'),
        ]);
  }

  Future _pedirLocation(BuildContext context) async {
    await showAlertDialog(
        context,
        AssetImage('assets/location.png'),
        'Habilitar su  ubicación',
        'Por favor permita el uso de su ubicacion para el envío',
        createButton(
            color: orange, labelButton: "Habilitar ubicación", func: () {}));
  }
}
