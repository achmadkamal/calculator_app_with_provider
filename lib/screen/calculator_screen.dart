import 'package:calculator_app_with_provider/constant/constant.dart';
import 'package:calculator_app_with_provider/provider_class/calculator_app.dart';
import 'package:calculator_app_with_provider/widget/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CalculatorApp>(context);
    return Container(
      color: kPrimaryDark,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Consumer<CalculatorApp>(
            builder: (context, calculatorApp, child) => Container(
              child: Container(
                margin: const EdgeInsets.only(right: 40),
                child: Text(
                  provider.historyInput,
                  style: TextStyle(
                    fontSize: 20,
                    color: kGreySecondary,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
          ),
          Consumer<CalculatorApp>(
            builder: (context, calculatorApp, child) => Container(
              child: Container(
                margin: const EdgeInsets.only(right: 40),
                child: Text(
                  provider.valueInput,
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                textColor: Colors.black,
                color: kOrange,
                width: 105.0,
                text: 'AC',
                buttonPressed: provider.allClear,
              ),
              CalculatorButton(
                textColor: Colors.black,
                color: kOrange,
                width: 105.0,
                text: 'C',
                buttonPressed: provider.clear,
              ),
              CalculatorButton(
                textColor: Colors.black,
                color: kOrange,
                text: '/',
                buttonPressed: provider.buttonPressed,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                text: '7',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                text: '8',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                text: '9',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                textColor: Colors.black,
                color: kOrange,
                text: '*',
                buttonPressed: provider.buttonPressed,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                text: '4',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                text: '5',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                text: '6',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                textColor: Colors.black,
                text: '-',
                color: kOrange,
                buttonPressed: provider.buttonPressed,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                text: '1',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                text: '2',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                text: '3',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                textColor: Colors.black,
                color: kOrange,
                text: '+',
                buttonPressed: provider.buttonPressed,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                text: '.',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                text: '0',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                text: '00',
                buttonPressed: provider.buttonPressed,
              ),
              CalculatorButton(
                textColor: Colors.black,
                color: kOrange,
                text: '=',
                buttonPressed: provider.calculate,
              ),
            ],
          )
        ],
      ),
    );
  }
}
