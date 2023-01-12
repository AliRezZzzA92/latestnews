import 'package:flutter/material.dart';
import 'package:blogproject/component/mytextfield.dart';

class Registerpage extends StatelessWidget {
  Registerpage({super.key});
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
                  Text("username :", style: TextStyle(fontSize: 20)),
                  SizedBox(width: 10),
                  Mytextfield(data: "username"),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("password :", style: TextStyle(fontSize: 20)),
                  SizedBox(width: 10),
                  Mytextfield(data: "password"),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("phone number :", style: TextStyle(fontSize: 20)),
                  SizedBox(width: 10),
                  Mytextfield(data: "phone number"),
                  SizedBox(width: 35)
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 45),
                  Text("Email :", style: TextStyle(fontSize: 20)),
                  SizedBox(width: 10),
                  Mytextfield(data: "Email"),
                ],
              ),
              const SizedBox(height: 10),
              RawMaterialButton(
                onPressed: () {
                  print(
                      "username: ${usernamectr.text} password: ${passwordctr.text} phone number: ${phonenumberctr.text} email: ${emailctr.text}");
                },
                fillColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const Text(
                  "Register",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
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
