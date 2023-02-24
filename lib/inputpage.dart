import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecarde.dart';
import 'icon_contect.dart';
import 'constant.dart';
import 'reslut_page.dart';
import 'buttonbutton.dart';
import 'bran.dart';

enum Gander{
 male,
 female,
  all,
}
int HIGHT=180;
int weight=60;
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
    Gander selectgnder=Gander.all;


    int Age=18;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Reusablecarde(
                    onpress:(){
                      setState(() {
                        selectgnder=Gander.male;
                      });
                    } ,
                    colour: selectgnder == Gander.male
                        ? kactivecolor
                        : kinactivecolor,

                    cardchild: IconContect(
                        icon: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Reusablecarde(
                      onpress:(){
                        setState(() {
                          selectgnder=Gander.female;
                        });
                      } ,
                      colour: selectgnder == Gander.female
                          ? kactivecolor
                          : kinactivecolor,
                      cardchild: IconContect(
                          icon: FontAwesomeIcons.venus, label: 'Female')
                  ),
                ),
              ],
            ),),
            Expanded(
              flex: 1,


              child: Reusablecarde(
                colour: kactivecolor,
                onpress:(){
                  setState(() {

                  });
                } ,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Text('HIGHT',style: klabelTextstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                      Text(HIGHT.toString(),
                        style: knumberstyle,

                      ),
                        SizedBox(width: 5,),
                        Text('cm',style: klabelTextstyle,),

                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                        thumbColor: Color(0xffeb1555),
                        overlayColor:  Color(0x29eb1555),
                        activeTrackColor:Colors.white ,
                        inactiveTrackColor: kinactivecolor,


                      ),
                      child: Slider(value:HIGHT.toDouble(),
                          min: 120,
                          max: 220,


                          onChanged: (double newvalue){
                        print(newvalue);
                        setState(() {
                          HIGHT=newvalue.round();

                        });
                          }
                      ),
                    ),

                  ],



                ),

              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Text('Weight',style: klabelTextstyle,),
                        Text(weight.toString(),style: knumberstyle,),
                        SizedBox(height: 1,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget> [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpresse: (){
                                setState(() {
                                  weight++;
                                  print(weight);
                                });

                               },
                            ),


                          SizedBox(width: 20,),


                          RoundIconButton(icon: FontAwesomeIcons.minus,
                          onpresse: (){
                            setState(() {
                              weight--;
                            });


                          },),
                          ],
                        ),
                      ],
                    ),
                    //color:
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: kactivecolor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: 200,
                    width: 170,
                  ),),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Text('AGE',style: klabelTextstyle,),
                        Text(Age.toString(),style: knumberstyle,),
                        SizedBox(height: 1,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget> [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpresse: (){
                                setState(() {
                                  Age++;
                                  print(Age);
                                });

                              },
                            ),


                            SizedBox(width: 20,),


                            RoundIconButton(icon: FontAwesomeIcons.minus,
                              onpresse: (){
                                setState(() {
                                  Age--;
                                });


                              },),
                          ],
                        ),
                      ],
                    ),
                    //color:
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: kactivecolor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: 200,
                    width: 170,
                  ),),
              ],
            ),


              BottomButton(
                ontop:(){
                  calcobran calc=calcobran(heigh: HIGHT, wight: weight);



                  Navigator.push(context, MaterialPageRoute(

                  builder:(context)=>Reslutpages(
                    bmiresult:calc.calcobmi(),
                  resultText:calc.getReslut(),
                  interpertation:calc.getinterpertation(),),),);


                } ,
                buttontitel: 'CALCULAT',

              ),

          ],
        )
    );
  }
}




