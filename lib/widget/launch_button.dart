import 'package:calculator_app_with_provider/constant/constant.dart';
import 'package:flutter/material.dart';

class LaunchButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  LaunchButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 50.0,
      child: FlatButton(
        color: kOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
