class Drink {
  String _name; 
  double _vol; //in Liter
  double _alcohol; //in % (Puntigamer 0.5L mit 7% Alc)

  Drink(this._name, this._vol, this._alcohol);

  double get alcohol => _alcohol;

  set alcohol(double value) {
    _alcohol = value;
  }

  double get vol => _vol;

  set vol(double value) {
    _vol = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }


}




