// ignore_for_file: avoid_print

import 'package:blogproject/model/dto/profilemodel/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:blogproject/model/profile_model.dart' as model;

// future<func>() async {
//   SharedPreferences shared = await SharedPreferences.getInstance();
//   shared.setString("token", "me").then((value) => {print(value)});
//   shared.getString("token");
// }

Future<Dtoprof> profileController(BuildContext context) async {
  var response;
  await model.profile().then(
    (value) {
      response = value;
    },
  );
  return response;
}
