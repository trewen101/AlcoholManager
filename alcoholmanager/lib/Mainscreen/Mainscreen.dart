import 'package:alcoholmanager/AlcholSelectedService.dart';
import 'package:alcoholmanager/AlcoholStorageService.dart';
import 'package:alcoholmanager/Drink.dart';
import 'package:alcoholmanager/Mainscreen/MainscreenView.dart';
import 'package:flutter/widgets.dart';

class Mainscreen extends StatefulWidget{
  AlcoholStorageService storedAlcohol = AlcoholStorageService(); 
  AlcoholSelectedService  selectedAlcohol = AlcoholSelectedService();
    @override
    State<StatefulWidget> createState() {
      return MainscreenView();
    }
  }
  

abstract class MainscreenState extends State<Mainscreen>{
  List<Drink> drinkList; 

  
}