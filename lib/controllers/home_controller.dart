import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  static HomeController instance = HomeController();

  int _carouselCurrentIndex = 0;

  int get carouselCurrentIndex => _carouselCurrentIndex;

  void updatePageIndicator(int index) {
    _carouselCurrentIndex = index;
    notifyListeners();
  }
}
