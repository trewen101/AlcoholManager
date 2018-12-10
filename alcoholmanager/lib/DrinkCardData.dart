import 'package:alcoholmanager/Drink.dart';
import 'package:flutter/material.dart';
class DrinkCardData{

  Drink _drink;
  DateTime _time;
  
  DrinkCardData(Drink drink){
    _drink = drink;
    _time = DateTime.now();
  }

  Drink get drink => _drink;

  set drink(Drink value) {
      _drink = value;
    }
  
  DateTime get time => _time;

  set time(DateTime value) {
      _time = value;
    }

  MaterialColor getColor(){
    if(_drink.alcohol<10){
      return Colors.blue;
    }else{
      return Colors.red;
    }
  }

}