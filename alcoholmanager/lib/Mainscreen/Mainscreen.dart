import 'package:alcoholmanager/AlcoholService.dart';
import 'package:alcoholmanager/Drink.dart';
import 'package:alcoholmanager/Mainscreen/MainscreenView.dart';
import 'package:flutter/widgets.dart';

class Mainscreen extends StatefulWidget{
  AlcoholService testservice = AlcoholService(); 
  @override
  State<StatefulWidget> createState() {
    return MainscreenView();
  }
}

abstract class MainscreenState extends State<Mainscreen>{
  List<Drink> drinkList; 

  
}