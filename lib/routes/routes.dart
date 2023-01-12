import 'package:blogproject/component/blog.dart';
import 'package:blogproject/view/index/index.dart';
import 'package:flutter/material.dart';
import 'package:blogproject/view/auth/regmob.dart';
import 'package:blogproject/myblog.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  "Register": (context) => Regmob(),
  "index": (context) => const Index(),
  "blog": (context) => const Blog(),
};
