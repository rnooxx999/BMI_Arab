import 'package:flutter/material.dart';
class TheCard extends StatelessWidget {
final Color coulur ;
final Widget childCard;
final Function onnpress;

TheCard({this.coulur, this.childCard ,this.onnpress});

int comBack(){}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onnpress,
      child: Container(
      child: childCard,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
      color: coulur, borderRadius: BorderRadius.circular(10),
      ),
      ),
    );
  }
}


