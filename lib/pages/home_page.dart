import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Good Morning\nDiDI',
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: Colors.black),
            ),
            SizedBox(height: 32.0),
            Text(
              'Good Morning Coffee:',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.black),
            ),
            SizedBox(
              height: 260.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  HomeItem(name:'White Mocha', image: 'assets/png/white-mocha.png'),
                  HomeItem(name:'Cappuccino', image: 'assets/png/white-mocha.png'),
                  HomeItem(name:'Latte', image: 'assets/png/white-mocha.png'),
                  HomeItem(name:'Mokachino', image: 'assets/png/white-mocha.png'),
                  HomeItem(name:'White Mocha', image: 'assets/png/white-mocha.png'),
                ],
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'More Coffee',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.black),
            ),
            SizedBox(
              height: 260.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  HomeItem(name:'White Mocha', image: 'assets/png/white-mocha.png'),
                  HomeItem(name:'White Mocha', image: 'assets/png/white-mocha.png'),
                  HomeItem(name:'White Mocha', image: 'assets/png/white-mocha.png'),
                  HomeItem(name:'White Mocha', image: 'assets/png/white-mocha.png'),
                  HomeItem(name:'White Mocha', image: 'assets/png/white-mocha.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeItem extends StatelessWidget {
  
  final String name;
  final String image;

  const HomeItem({
    Key key, this.name, this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      margin: EdgeInsets.only(right:10.0, top: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 10,
            color: Color(0x0f262626),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          ClipRRect(
            child: Image.asset(this.image),
            borderRadius: BorderRadius.circular(16.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  this.name,
                  style: TextStyle(fontSize: 16.0, color: Color(0xff965F41)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/svg/heart.svg'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset('assets/svg/star.svg'),
                    SvgPicture.asset('assets/svg/star.svg'),
                    SvgPicture.asset('assets/svg/star.svg'),
                    SvgPicture.asset('assets/svg/star.svg'),
                    SvgPicture.asset('assets/svg/star.svg'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/svg/arrow.svg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
