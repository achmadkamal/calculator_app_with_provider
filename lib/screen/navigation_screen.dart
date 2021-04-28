import 'package:calculator_app_with_provider/constant/constant.dart';
import 'package:calculator_app_with_provider/provider_class/calculator_app.dart';
import 'package:calculator_app_with_provider/screen/calculator_screen.dart';
import 'package:calculator_app_with_provider/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationScreen extends StatelessWidget {
  final List<Widget> screenPage = [
    CalculatorScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CalculatorApp>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: kGreyPrimary,
        backgroundColor: kSecondaryDark,
        selectedItemColor: kOrange,
        type: BottomNavigationBarType.fixed,
        currentIndex: provider.currentIndex,
        onTap: (newValue) {
          provider.currentIndex = newValue;
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profle',
          ),
        ],
      ),
      body: screenPage[provider.currentIndex],
    );
  }
}
