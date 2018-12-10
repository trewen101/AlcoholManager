import 'package:alcoholmanager/Drink.dart';
import 'package:alcoholmanager/DrinkCardData.dart';
import 'package:flutter/material.dart';

class DrinkCard extends StatelessWidget{
  DrinkCardData _drinkcard; 
  
  DrinkCard(Drink d){
    _drinkcard = DrinkCardData(d);
  }
  
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      child:Row(
        children: <Widget>[
          Container(
              width: 10,
              height: 75,
              color: _drinkcard.getColor(),
              
            ),  
          Expanded(
            child: ListTile(
            title: Text(_drinkcard.drink.name),
            subtitle: Text("Vol: " + _drinkcard.drink.alcohol.toString() +"% - " + _drinkcard.drink.vol.toString() + "L" ),
            ),
          ),
          Text(_drinkcard.time.hour.toString() + " : " + _drinkcard.time.minute.toString()),

            
      ],)
          
    );
  }

}