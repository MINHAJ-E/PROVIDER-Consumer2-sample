import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int counte=0;
  inncremen(){
    counte++;
    notifyListeners();
  }
}