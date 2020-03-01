import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain{

final int height;
final int weight;
CalculatorBrain({this.height, this.weight});

double _bmi ;

String calculatorBMI(){
  _bmi = weight / pow(height/100 ,2 );
 return _bmi.toStringAsFixed(1);
}

String getReult(){
if(_bmi>= 25){return "جدا متينة";}
else if (_bmi > 18.5){return "عادية";}
else {return " نحيلة";}
}

String gerInterpretion(){
if(_bmi>=25){return "سيء جدا عليك العمل بجد لخسارة الوزن";}
else if (_bmi > 18.5){return "لا بأس بجسدك من الافضل ان تحذري من التخن او النحل";}
else {return " يبدو بأن جسدك هو الافضل احسنتي";}
}
}