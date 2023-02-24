import 'package:flutter/material.dart';
import 'constant.dart';




class BottomButton extends StatelessWidget {
  BottomButton({required this.ontop,required this.buttontitel});

  final  ontop;
  final String buttontitel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontop,
      child: Container(

        child: Center(
          child: Text(buttontitel,style: klargebuttonTextstyle,),
        ),
        color:kbottomcontanercolor ,
        margin: EdgeInsets.only(top: 10),
        padding:  EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 80,
        alignment: AlignmentDirectional.center,
      ),

    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({/*required this.child*/required this.icon,required this.onpresse}) ;
  //final Widget child;
  final IconData icon;
  final  onpresse;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpresse,



      child:Icon(icon) ,
      elevation: 6,

      constraints: BoxConstraints.tightFor(
        width: 60,
        height:60,
      ),
      shape: CircleBorder(),

      fillColor: Color(0xff4c4f5e),


    );
  }
}
