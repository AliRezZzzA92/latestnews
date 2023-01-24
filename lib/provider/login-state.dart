import 'package:flutter/material.dart';
import 'package:blogproject/globals/globals.dart' as globals;

class Loginstate extends ChangeNotifier {
  void changecolor(Color value) {
    globals.btn = value;
    notifyListeners();
  }
}
