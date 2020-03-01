import 'package:bmi_arab/icon_contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_arab/bottom_botton.dart';
import 'package:bmi_arab/caculater_brain.dart';
import 'package:bmi_arab/constant.dart';
import 'package:bmi_arab/result_page.dart';
import 'package:bmi_arab/the_card.dart';


/*


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

 */


 enum Gender {male, famle}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

Color malecolor = changableColor;
Color famleColor = changableColor;
Gender selectedGender;
int height = 180;
int weight = 60;
int age = 19;

/*
1- اولا حطينا لونين متغيرين بشكل عام
- ثم خصصناهم مع استخدام نفس اللون
3- نستخدم الif لجعل كلا الزرين ينغطان ولكن على حدا
4- نعطي الزرين رقم معين مختلف لنميزهم اثناء المقارنة

void updateColor(Gender genderIndex){
if (genderIndex == Gender.male){
if(malecolor ==changableColor){
malecolor = activeColor;
famleColor= changableColor;}
else{malecolor = changableColor;}
}
if (genderIndex == Gender.famle){
if(famleColor ==changableColor){
famleColor = activeColor;
malecolor =changableColor;}
else{famleColor = changableColor;}
}}
 */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        //first ro
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:TheCard( coulur: selectedGender == Gender.male ? changableColor :activeColor ,
                  childCard:IconContact(FontAwesomeIcons.mars, "ذكر"),
                  onnpress: (){
                  setState(() {
                    selectedGender = Gender.male;
                  });},),),
                Expanded(
                  child:TheCard(coulur:  selectedGender == Gender.male ? activeColor : changableColor ,
                  childCard: IconContact(FontAwesomeIcons.venus, "انثى",),
                  onnpress: (){
                  setState(() {
                    selectedGender = Gender.famle;
                  });},),)],
            ),),
            // middle
          Expanded(
            child: TheCard(coulur: Color(0xFF005D40),
            childCard:Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text("الطول",style: labeltyle,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
            Text(height.toString(),style: labelNumber),
            Text(" cm",style: labeltyle),
            ],),
            SliderTheme(
            data: SliderTheme.of(context).copyWith(
            inactiveTrackColor: Colors.white,
            thumbColor:Colors.red[400] ,
            activeTrackColor:Color(0xFFEB1115) ,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10,),
            overlayShape: RoundSliderOverlayShape(overlayRadius:20 ),
            overlayColor: Colors.pinkAccent.withOpacity(0.4)
            ),
              child: Slider(
              value: height.toDouble(),
              min: 120, max: 220,
              onChanged: (double neValue){
              print(neValue);
              setState(() {
               height = neValue.round() ;
              });
              },
              ),
            )
              ],),
            ),),
            //last Row
            Expanded(
              child: Row(
              children: <Widget>[
                Expanded(
                  child:TheCard(coulur: Color(0xFF005D40),
                  childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text("الوزن", style: labeltyle,),
                  Text(weight.toString(), style: labelNumber,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIconButton(icon: FontAwesomeIcons.minus,
                      onPre: (){
                      setState(() {
                        weight--;
                      });} ,),
                      RoundIconButton(icon: FontAwesomeIcons.plus,
                      onPre: (){
                      setState(() {
                        weight++;
                      });}),],
                  )],),)
                ),
                Expanded(
                  child: TheCard(coulur: Color(0xFF005D40),
                  childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text("العمر", style: labeltyle,),
                  Text(age.toString(), style: labelNumber,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIconButton(icon: FontAwesomeIcons.minus,
                      onPre: (){
                      setState(() {
                        age--;
                      });} ,),
                      RoundIconButton(icon: FontAwesomeIcons.plus,
                      onPre: (){
                      setState(() {
                        age++;
                      });}),],
                  )],),),
                ),
              ],),),
              BottonBotom (
              buttonTitle: "احسب",
              onTap: (){
              CalculatorBrain calculate =CalculatorBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(
              builder: (contet)=> ResultPage(
              bmiRe: calculate.calculatorBMI(),
              reText: calculate.getReult() ,
              interreation:calculate.gerInterpretion() ,
              )));})
        ],
      ),
    );
  }
}


class RoundIconButton extends StatelessWidget {
final IconData icon;
final Function onPre;

RoundIconButton({this.icon,this.onPre});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
    child: Icon(icon),
    elevation: 6.0,
    onPressed: onPre,
//    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    shape: CircleBorder(),
    constraints: BoxConstraints.tightFor(width: 40, height: 40),
    fillColor: Colors.black38,
    );
  }
}


