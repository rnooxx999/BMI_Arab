import 'package:flutter/material.dart';
import 'package:bmi_arab/bottom_botton.dart';
import 'package:bmi_arab/caculater_brain.dart';
import 'package:bmi_arab/constant.dart';
import 'package:bmi_arab/the_card.dart';
class ResultPage extends StatelessWidget {
ResultPage({this.bmiRe, this.reText, this.interreation,});
final String bmiRe;
final String reText;
final String interreation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("BMI"),),
    body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    Expanded(child: Container(padding: EdgeInsets.only(left: 39,),
    child: Text(" النتيجة",style: labelReult,),)),
    Expanded(child:TheCard(coulur: Color(0xFF005D40),
    childCard: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    Text(reText,style: TextStyle(fontSize: 19,color: Colors.lightGreenAccent),),
    Text(bmiRe, style:TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white) ,),
    Padding(
      padding: const EdgeInsets.all(19.0),
      child: Text(interreation, style:labeltyle ,textAlign: TextAlign.center,),
    ),
    ],),
    ),flex: 5 ,),
    BottonBotom(buttonTitle: "اعادة",
    onTap: (){Navigator.pop(context);},),
    ],));
  }
}


