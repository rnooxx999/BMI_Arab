import 'package:flutter/material.dart';
import 'package:bmi_arab/constant.dart';



class IconContact extends StatelessWidget {
final IconData iconDat;
final String label;

IconContact(this.iconDat, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Icon(iconDat,size: 50,color:Colors.white ,),
                  SizedBox(height: 5,),
                  Text(label,style: labeltyle)
                  ],);
  }}