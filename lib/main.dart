import 'package:coffee/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class OrdersPage extends StatelessWidget {
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        showSelectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/home.svg', color: Color(0x5f3B3B3B)),
              activeIcon: SvgPicture.asset('assets/svg/home.svg'),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/compass.svg', color: Color(0x5f3B3B3B)),
              activeIcon: SvgPicture.asset('assets/svg/compass.svg'),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/search.svg', color: Color(0x5f3B3B3B)),
              activeIcon: SvgPicture.asset('assets/svg/search.svg'),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/shopping-cart.svg', color: Color(0x5f3B3B3B)),
              activeIcon: SvgPicture.asset('assets/svg/shopping-cart.svg'),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/menu.svg', color: Color(0x5f3B3B3B)),
              activeIcon: SvgPicture.asset('assets/svg/menu.svg'),
              title: SizedBox.shrink()),
        ],
      ),
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
}

class LastOrderItem extends StatelessWidget {
  final String logo;
  final int price;
  final String name;
  final double rate;
  final DateTime dateTime;
  const LastOrderItem({
    Key key,
    this.logo,
    this.price,
    this.name,
    this.rate,
    this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 10,
            color: Color(0x0f262626),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            child: Image.asset(
              this.logo,
              width: 80.0,
              height: 80.0,
            ),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(this.name, style: Theme.of(context).textTheme.headline6),
              Text(new DateFormat.yMd().add_jm().format(this.dateTime),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Color(0xff999999))),
              SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                    text: 'Your rate: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.w300),
                    children: [
                      TextSpan(
                        text: '${this.rate} ',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      WidgetSpan(
                        child: SvgPicture.asset('assets/svg/star.svg'),
                        alignment: PlaceholderAlignment.middle,
                      ),
                    ]),
              ),
            ],
          ),
          Spacer(),
          Text(
            '${this.price} \$',
            style: TextStyle(
              color: Color(0xff0085FF),
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
