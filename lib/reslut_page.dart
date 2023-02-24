
import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusablecarde.dart';
import 'buttonbutton.dart';
import 'bran.dart';
import 'inputpage.dart';





class Reslutpages extends StatelessWidget {
  const Reslutpages({required this.bmiresult,  required this.resultText, required this.interpertation}) ;


  final String bmiresult;
  final String resultText;
  final String  interpertation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',style: klabelTextstyle,),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Expanded(
            flex: 1,

              child: Container(


                child: Text('Your Result',style: ktiteltextstyle,),
              ),),
          Expanded(
              flex: 5,
              child: Reusablecarde(
                colour: kactivecolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget> [
                    Text(resultText,style: kresluttextstyle,),
                    Text(bmiresult,style:KBMTextstyle ,),
                    Text( interpertation,style: ktextstylrbodyresultpage,),

                  ],
                ),
                onpress: (){},


              ),),
          BottomButton(
            ontop: (){
              Navigator.pop(context,'/');
            },
            buttontitel: 'ReCalculat',
          ),
        ],
      ),

    );
  }
}
