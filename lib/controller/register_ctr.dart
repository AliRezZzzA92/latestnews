// ignore_for_file: avoid_print

import 'package:blogproject/provider/register_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:blogproject/model/registermodel.dart' as model;

future<func>() async {
  SharedPreferences shared = await SharedPreferences.getInstance();
  shared.setString("token", "me").then((value) => {print(value)});
  shared.getString("token");
}

registerController(String username, String password, String email,
    String phonenumber, BuildContext context) {
  model.register(phonenumber, password, username, email).then(
    (response) {
      // ignore: duplicate_ignore
      if (response == 200) {
        print("succes");
        context.read<Registerstate>().changecolor(Colors.greenAccent);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: const Text("welcome!"),
          action: SnackBarAction(label: "label", onPressed: () {}),
          duration: const Duration(seconds: 2),
        ));

        // ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
          content: const Text("data"),
          actions: [
            TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).clearMaterialBanners();
                },
                child: const Text("data")),
          ],
        ));
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("salam"),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.done_all)),
                ],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                content: const Text("discription"),
              );
            });
      } else {
        context.read<Registerstate>().changecolor(Colors.redAccent);

        return "error";
      }
    },
  );
}
