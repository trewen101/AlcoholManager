import 'package:alcoholmanager/Drink.dart';

class AlcoholStorageService {
  List<Drink> _drinkList;

  AlcoholStorageService(){
    drinkList = List<Drink>(); 
    drinkList.add(Drink("Punti Halo", 0.5, 5)); 
    drinkList.add(Drink("Gösswer Normal", 0.3, 7)); 
    drinkList.add(Drink("Belvedere", 1.0, 11.0)); 
    drinkList.add(Drink("Punti Winter", 0.5, 5)); 
    drinkList.add(Drink("Stiegel", 0.3, 7)); 
    drinkList.add(Drink("Rum", 1.0, 11.0)); 
    drinkList.add(Drink("Hofbräu", 0.5, 5)); 
    drinkList.add(Drink("Bärenbräu", 0.3, 7)); 
    drinkList.add(Drink("Stoh", 1.0, 11.0)); 

  }

  List<Drink> get drinkList => _drinkList;

  set drinkList(List<Drink> value) {
    _drinkList = value;
  }


}