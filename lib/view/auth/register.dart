// ignore_for_file: avoid_print

import 'package:blogproject/provider/register_state.dart';
import 'package:flutter/material.dart';
import 'package:blogproject/component/mytextfield.dart';
import 'package:provider/provider.dart';
import 'package:blogproject/controller/register_ctr.dart' as controller;
import 'package:blogproject/globals/globals.dart' as global;

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  TextEditingController usernamectr = TextEditingController();

  TextEditingController passwordctr = TextEditingController();

  TextEditingController phonenumberctr = TextEditingController();

  TextEditingController emailctr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Image(
                  image: AssetImage("lib/assets/images/signup.webp"),
                  width: 250,
                  height: 250),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.app_registration, size: 30),
                  SizedBox(width: 20),
                  Text("Register",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(width: 30),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("username :", style: TextStyle(fontSize: 20)),
                  const SizedBox(width: 10),
                  Mytextfield(
                    label: "username",
                    controller: usernamectr,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("password :", style: TextStyle(fontSize: 20)),
                  const SizedBox(width: 10),
                  Mytextfield(
                    label: "password",
                    controller: passwordctr,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("phone number :", style: TextStyle(fontSize: 20)),
                  const SizedBox(width: 10),
                  Mytextfield(
                    label: "phone number",
                    controller: phonenumberctr,
                  ),
                  const SizedBox(width: 35)
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 45),
                  const Text("Email :", style: TextStyle(fontSize: 20)),
                  const SizedBox(width: 10),
                  Mytextfield(
                    label: "Email",
                    controller: emailctr,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Consumer<Registerstate>(builder: ((context, value, child) {
                return RawMaterialButton(
                  onPressed: () {
                    controller.registerController(
                        usernamectr.text,
                        passwordctr.text,
                        emailctr.text,
                        phonenumberctr.text,
                        context);
                  },
                  fillColor: global.btn,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                );
              })),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("Login");
                },
                child: const Text(
                  'I already have acount',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
