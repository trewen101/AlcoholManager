import 'package:alcoholmanager/Drink.dart';
import 'package:flutter/material.dart';

class DrinkCard extends StatelessWidget{
  Drink _drink; 
  
  DrinkCard(this._drink); 
  @override
  Widget build(BuildContext context) {
    return Card(
      child: 
          ListTile(
            title: Text(_drink.name),
            subtitle: Text("Vol: " + _drink.alcohol.toString() +"% - " + _drink.vol.toString() + "L" ),
          )
    );
  }

}