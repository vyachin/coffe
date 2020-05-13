import 'package:coffee/widgets/last_order_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LastOrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 8.0,
        title: Text('Latest orders'),
        textTheme: Theme.of(context).textTheme,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: buildBottomNavigationBar(0),
      body: ListView(children: <Widget>[
        LastOrderItem(
          logo: 'assets/png/starbucks.png',
          price: 50,
          name: 'Starbucks',
          rate: 4.0,
          dateTime: DateTime.now(),
        ),
        LastOrderItem(
          logo: 'assets/png/dunkin.png',
          price: 30,
          name: 'Dunkin',
          rate: 4.0,
          dateTime: DateTime.now(),
        ),
        LastOrderItem(
          logo: 'assets/png/baskin-robbins.png',
          price: 23,
          name: 'Baskin Robbins',
          rate: 4.5,
          dateTime: DateTime.now(),
        ),
        LastOrderItem(
          logo: 'assets/png/krispy-kreme.png',
          price: 70,
          name: 'Krispy Kreme',
          rate: 3.5,
          dateTime: DateTime.now(),
        ),
        LastOrderItem(
          logo: 'assets/png/starbucks.png',
          price: 50,
          name: 'Starbucks',
          rate: 4.0,
          dateTime: DateTime.now(),
        ),
        LastOrderItem(
          logo: 'assets/png/dunkin.png',
          price: 30,
          name: 'Dunkin',
          rate: 4.0,
          dateTime: DateTime.now(),
        ),
        LastOrderItem(
          logo: 'assets/png/baskin-robbins.png',
          price: 23,
          name: 'Baskin Robbins',
          rate: 4.5,
          dateTime: DateTime.now(),
        ),
        LastOrderItem(
          logo: 'assets/png/krispy-kreme.png',
          price: 70,
          name: 'Krispy Kreme',
          rate: 3.5,
          dateTime: DateTime.now(),
        ),
        LastOrderItem(
          logo: 'assets/png/starbucks.png',
          price: 50,
          name: 'Starbucks',
          rate: 4.0,
          dateTime: DateTime.now(),
        ),
        LastOrderItem(
          logo: 'assets/png/dunkin.png',
          price: 30,
          name: 'Dunkin',
          rate: 4.0,
          dateTime: DateTime.now(),
        ),
        LastOrderItem(
          logo: 'assets/png/baskin-robbins.png',
          price: 23,
          name: 'Baskin Robbins',
          rate: 4.5,
          dateTime: DateTime.now(),
        ),
        LastOrderItem(
          logo: 'assets/png/krispy-kreme.png',
          price: 70,
          name: 'Krispy Kreme',
          rate: 3.5,
          dateTime: DateTime.now(),
        ),
      ]),
    );
  }

  BottomNavigationBar buildBottomNavigationBar(int currentIndex) {
    final icons = [
      'assets/svg/home.svg',
      'assets/svg/compass.svg',
      'assets/svg/search.svg',
      'assets/svg/shopping-cart.svg',
      'assets/svg/menu.svg',
    ];

    return BottomNavigationBar(
      currentIndex: currentIndex,
      showSelectedLabels: false,
      items: icons
          .map<BottomNavigationBarItem>(
              (String iconPath) => buildBottomNavigationBarItem(iconPath))
          .toList(),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(String iconPath) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        color: Color(0x5f3B3B3B),
      ),
      activeIcon: SvgPicture.asset(iconPath),
      title: SizedBox.shrink(),
    );
  }
}
