import 'package:flutter/material.dart';
import 'inputpage.dart';
import 'reslut_page.dart';
import 'bran.dart';

calcobran calc=calcobran(heigh: HIGHT, wight: weight);

void main()=> runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(

        primaryColor: Colors.black,
       scaffoldBackgroundColor:  Color(0XFF182C4C),
        textTheme: TextTheme(

            bodyText2:TextStyle(color:  Colors.white,fontSize:60,),
            bodyText1:TextStyle(color: Colors.green,),
        ),


        appBarTheme: AppBarTheme(
          color: Colors.black,

        ),




      ),

    home: InputPage(),
    );
  }
}





