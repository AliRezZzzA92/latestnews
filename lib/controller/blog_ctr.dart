// ignore_for_file: avoid_print

import 'package:blogproject/model/dto/profilemodel/dtoblog_model.dart';
import 'package:flutter/material.dart';
import 'package:blogproject/model/blog_model.dart' as model;

// future<func>() async {
//   SharedPreferences shared = await SharedPreferences.getInstance();
//   shared.setString("token", "me").then((value) => {print(value)});
//   shared.getString("token");
// }

Future<Dtoblog> blogController(BuildContext context) async {
  var response;
  await model.blogmodel().then(
    (value) {
      response = value;
    },
  );
  return response;
}
