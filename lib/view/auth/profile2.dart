import 'package:flutter/material.dart';
import 'package:blogproject/controller/profile_ctr.dart' as controller;
import 'package:blogproject/globals/globals.dart' as global;
import 'package:provider/provider.dart';
import '../../model/dto/profilemodel/dtoprofile_model.dart';

class Profile2 extends StatefulWidget {
  const Profile2({super.key});

  @override
  State<Profile2> createState() => _ProfileState();
}

class _ProfileState extends State<Profile2> {
  var me =
      Dtoprof(fname: "-", lname: "-", username: "-", password: "-", image: "-");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(children: [
              Text(
                "fname : ${me.fname}",
                style: const TextStyle(fontSize: 20),
              )
            ]),
            Row(
              children: [
                Text("lname : ${me.lname}",
                    style: const TextStyle(fontSize: 20))
              ],
            ),
            Row(
              children: [
                Text("bio : ${me.bio}", style: const TextStyle(fontSize: 20))
              ],
            ),
            Consumer(builder: ((context, value, child) {
              return RawMaterialButton(
                onPressed: () {
                  controller.profileController(context).then((value) {
                    setState(() {
                      me = value;
                    });
                  });
                },
                fillColor: global.btn,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const Text(
                  "profile",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
