import 'package:alcoholmanager/Drink.dart';

class AlcoholSelectedService {
  List<Drink> _drinkList;

  AlcoholSelectedService(){
    drinkList = List<Drink>(); 
    }
  List<Drink> get drinkList => _drinkList;

  set drinkList(List<Drink> value) {
    _drinkList = value;
  }


}