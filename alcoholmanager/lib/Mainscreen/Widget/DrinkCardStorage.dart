import 'package:alcoholmanager/Drink.dart';
import 'package:alcoholmanager/DrinkCardData.dart';
import 'package:flutter/material.dart';

class DrinkCardStorage extends StatelessWidget{
  DrinkCardData _drinkcard; 
  
  DrinkCardStorage(Drink d){
    _drinkcard = DrinkCardData(d);
  }
  
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          
          Expanded(
            child: ListTile(
            title: Text(_drinkcard.drink.name),
            subtitle: Text("Vol: " + _drinkcard.drink.alcohol.toString() +"% - " + _drinkcard.drink.vol.toString() + "L" ),
            ),
          )
      ],)
          
    );
  }

}