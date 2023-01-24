// ignore_for_file: avoid_print, unnecessary_import

import 'package:blogproject/model/loginmodel.dart' as model;
import 'package:blogproject/provider/login-state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

future<func>() async {
  SharedPreferences shared = await SharedPreferences.getInstance();
  shared.setString("token", "me").then((value) => {print(value)});
  shared.getString("token");
}

loginController(String phonenumber, BuildContext context) {
  model.regmob(phonenumber).then(
    (response) {
      // ignore: duplicate_ignore
      if (response == 200) {
        print("succes");
        context.read<Loginstate>().changecolor(Colors.blue);
      } else {
        context.read<Loginstate>().changecolor(Colors.red);

        return "error";
      }
    },
  );
}
