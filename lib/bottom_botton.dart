import 'package:flutter/material.dart';
import 'package:bmi_arab/constant.dart';

class BottonBotom extends StatelessWidget {
final Function onTap;
final String buttonTitle;

BottonBotom({this.onTap, this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: onTap,
                child: Container(
                child: Center(child: Text(buttonTitle,style: labelNumber,)),
                color:Color(0xFFEB1115),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity, height: bottomhight,
                ),
              );
  }
}