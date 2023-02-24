import 'package:flutter/material.dart';



class Reusablecarde extends StatelessWidget {

  Reusablecarde({required this.colour,required this.cardchild,required this.onpress});

  final Color colour;
  final Widget cardchild;
  final  onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap:onpress ,
      child: Container(

        child: cardchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10)
        ),
        width: double.infinity,
      ),
    );
  }
}