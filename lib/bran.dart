import 'dart:math';


class calcobran{
  calcobran({required this.heigh,required this.wight});

  final int heigh;
  final int wight;

  late double _bmi;

  String calcobmi(){
    _bmi=wight/pow(heigh/100, 2);
    return _bmi.toStringAsFixed(1);

  }
  String getReslut(){
    if(_bmi>=25){
      return 'over weight';
    }else if (_bmi>18.5){
      return 'normal';
    }else{
      return'unnder weight';
    }
  }

  String getinterpertation(){
    if(_bmi>=25){
      return 'you have a higher than nomral body weight.try to exercise more.';
    }else if (_bmi>18.5){
      return 'you have a normal body weight . good job';
    }else{
      return'you have a lower than nomarl body weight . you can eat bet more';
    }
  }
}