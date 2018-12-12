class CalculationService{
  double _alcohol = 0;


void add(double a){
  _alcohol = _alcohol + a;
}

  set alcohol(double value) {
    _alcohol = value;
  }

  double get alcohol => _alcohol;
}