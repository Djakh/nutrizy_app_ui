import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigation1ProviderN extends ChangeNotifier {
  bool _isClickedBreakfast = false;
  bool _isClickedDesserts = false;
  bool _isClickedLunch = false;

  void chooseBreakfast() {
    _isClickedBreakfast = true;
    _isClickedDesserts = false;
    _isClickedLunch = false;
    notifyListeners();
  }

  void chooseDesserts() {
    _isClickedBreakfast = false;
    _isClickedDesserts = true;
    _isClickedLunch = false;

    notifyListeners();
  }

  void chooseLunch() {
    _isClickedBreakfast = false;
    _isClickedDesserts = false;
    _isClickedLunch = true;

    notifyListeners();
  }

  get getIsClickedBreakfast => _isClickedBreakfast;
  get getIsClickedDesserts => _isClickedDesserts;
  get getIsClickedLunch => _isClickedLunch;
}
