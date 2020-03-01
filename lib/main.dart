import 'package:bmi_arab/inputpage.dart';
import 'package:flutter/material.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme : ThemeData.dark().copyWith(
    primaryColor: Color( 0xFF013D30),
    accentColor:Colors.teal[700],
    scaffoldBackgroundColor: Color( 0xFF013D30),
    ),

      home: InputPage(),
    );
  }
}