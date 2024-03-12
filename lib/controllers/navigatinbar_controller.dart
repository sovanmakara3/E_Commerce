import 'package:flutter/material.dart';

class BottomNavigationBarProvider extends ChangeNotifier {
  int screenIndex = 0;

  int get currentIndex => screenIndex;

  set updateScreenIndex(int newIndex) {
    screenIndex = newIndex;
    notifyListeners();
  }
}
