import 'package:flutter/cupertino.dart';

class Pizza extends ChangeNotifier {
  int pizzaNumber = 0;

  void changePizzaNumber(int i) {
    pizzaNumber = i;
    notifyListeners();
    /**
     * 
     * setstate((){
     * });
     */
  }
}
