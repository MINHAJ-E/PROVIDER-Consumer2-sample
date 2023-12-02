
import 'package:flutter/material.dart';

class AddProvider extends ChangeNotifier{
   TextEditingController number1=TextEditingController();
  TextEditingController number2=TextEditingController();
  int output=0;
  addd(){
    int num1=int.parse(number1.text);
    int num2=int.parse(number2.text);
      output=num1+num2;
      notifyListeners();
  }
}