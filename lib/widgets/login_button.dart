import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String label;
  final VoidCallback pressed;

  const LoginButton(
      {Key key,
      this.color,
      this.label,
      this.pressed,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: this.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      textColor: this.textColor,
      onPressed: this.pressed,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Text(
          this.label,
          style: TextStyle(
            fontSize: 12.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
