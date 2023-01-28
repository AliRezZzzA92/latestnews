import 'package:flutter/material.dart';
import 'package:blogproject/globals/globals.dart' as global;

class Registerstate extends ChangeNotifier {
  void changecolor(Color value) {
    global.btn = value;
    notifyListeners();
  }
}
