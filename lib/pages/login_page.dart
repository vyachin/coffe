import 'package:coffee/pages/home_page.dart';
import 'package:coffee/pages/last_orders_page.dart';
import 'package:coffee/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {

  void _signUp(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => LastOrdersPage()));
  }

  void _goHome(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: SvgPicture.asset('assets/svg/login.svg'),
          ),
          LoginButton(
            label: 'Signup with Facebook',
            color: Color(0xFF3B5998),
            pressed: () => _goHome(context),
          ),
          LoginButton(
            label: 'Signup with Google',
            color: Color(0xFFF14336),
            pressed: () => _signUp(context),
          ),
          Text('or'),
          LoginButton(
            label: 'Signup with Email',
            color: Color(0xFFF8F8F8),
            textColor: Color(0xff3B3B3B),
            pressed: () => _signUp(context),
          ),
        ],
      ),
    );
  }
}
