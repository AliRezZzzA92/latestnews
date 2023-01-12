import 'package:blogproject/view/index/index.dart';
import 'package:flutter/material.dart';
import 'package:blogproject/view/auth/regmob.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  "Register": (context) => Regmob(),
  "index": (context) => const Index()
};
