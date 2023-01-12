import 'package:blogproject/component/mytextfield.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});
  TextEditingController usernamectr = TextEditingController();
  TextEditingController passwordctr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
                image: AssetImage("lib/assets/images/login.webp"),
                width: 250,
                height: 250),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.login, size: 30),
                SizedBox(width: 10),
                Text(
                  "login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
            RawMaterialButton(
              onPressed: () {
                // ignore: avoid_print
                print(
                    "username: ${usernamectr.text} password: ${passwordctr.text}");
              },
              elevation: 5,
              fillColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("Register");
              },
              child: const Text(
                'Free Register',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
