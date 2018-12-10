import 'package:alcoholmanager/Drink.dart';

class AlcoholService {
  List<Drink> _drinkList;

  AlcoholService(){
    drinkList = List<Drink>(); 
    drinkList.add(Drink("Punti Halo", 0.5, 5)); 
    drinkList.add(Drink("Gösswer Normal", 0.3, 7)); 
    drinkList.add(Drink("Belvedere", 1.0, 11.0)); 

  }

  List<Drink> get drinkList => _drinkList;

  set drinkList(List<Drink> value) {
    _drinkList = value;
  }


}