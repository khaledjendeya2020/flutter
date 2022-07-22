import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  bool isLight = true;
  changeMode(){
    isLight = !isLight;
    notifyListeners();
  }

}