import 'dart:html';

import 'package:blogproject/component/mytextfield.dart';
import 'package:flutter/material.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _contactusState();
}

class _contactusState extends State<Contactus> {
  TextEditingController nameCtr = TextEditingController();
  TextEditingController emailCtr = TextEditingController();
  TextEditingController textCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Row(children: const [
            Icon(Icons.newspaper),
            SizedBox(width: 10),
            Text(
              "Blog Project",
              style: TextStyle(fontSize: 20),
            )
          ]),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.supervised_user_circle),
              onPressed: () {
                Navigator.of(context).pushNamed("Register");
              },
            ),
            const SizedBox(width: 30)
          ]),
      body: Form(
        child: SizedBox(
          child: Column(
            children: [
              Mytextfield(label: "name", controller: nameCtr),
              Mytextfield(label: "email", controller: emailCtr),
            ],
          ),
        ),
      ),
    );
  }
}
