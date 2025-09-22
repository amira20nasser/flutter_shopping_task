import 'package:flutter/material.dart';

class AddedProductCartChangeNotifier extends ChangeNotifier {
  bool _addedCart = false;

  bool get addedCart => _addedCart;

  void toggle() {
    _addedCart = !_addedCart;
    notifyListeners();
  }
}
