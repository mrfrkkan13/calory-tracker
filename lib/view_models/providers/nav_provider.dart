import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  int _screenIndex = 0;

  int get getScreenIndex => _screenIndex;

  void setScreenIndex(int val) {
    _screenIndex = val;
    notifyListeners();
  }
}
