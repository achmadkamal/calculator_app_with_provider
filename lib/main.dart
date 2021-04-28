import 'package:calculator_app_with_provider/provider_class/calculator_app.dart';
import 'package:calculator_app_with_provider/screen/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<CalculatorApp>(
        create: (context) => CalculatorApp(),
        child: NavigationScreen(),
      ),
    );
  }
}
