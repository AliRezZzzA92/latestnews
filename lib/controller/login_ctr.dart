import 'package:blogproject/model/loginmodel.dart' as model;
import 'package:blogproject/provider/login_state.dart';
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
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text("fine"),
            action: SnackBarAction(label: 'click', onPressed: () {})));
        ScaffoldMessenger.of(context).clearSnackBars();
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
        context.read<Loginstate>().changecolor(Colors.red);

        return "error";
      }
    },
  );
}
