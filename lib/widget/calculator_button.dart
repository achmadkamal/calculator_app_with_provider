import 'package:calculator_app_with_provider/constant/constant.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Function buttonPressed;
  final double width;
  final Color color;
  final Color textColor;

  CalculatorButton(
      {@required this.text,
      @required this.buttonPressed,
      this.width,
      this.color,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width == null ? 60.0 : width,
      height: 60.0,
      child: FlatButton(
        color: color == null ? kGreyPrimary : color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        onPressed: () {
          buttonPressed(text);
        },
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor == null ? Colors.white : textColor, 
          ),
        ),
      ),
    );
  }
}
