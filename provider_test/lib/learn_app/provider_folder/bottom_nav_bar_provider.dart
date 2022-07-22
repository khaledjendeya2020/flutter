import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_test/learn_app/screens/pizza_screen.dart';
import 'package:provider_test/learn_app/screens/pizza_screen2.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int index = 0;

  List<Widget> screens = [
    PizzaScreen(),
    PizzaScreen2(),
  ];

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
  ];

  void changeScreens(int i) {
    index = i;
    notifyListeners();
  }
}
