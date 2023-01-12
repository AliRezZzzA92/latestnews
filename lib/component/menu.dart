import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  // bool blogTogle = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("signup/login",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushNamed("Register");
              },
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(color: Colors.redAccent),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10),
                Text(
                  "my activities",
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 20),

            InkWell(
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(Icons.save),
                  SizedBox(width: 10),
                  Text("saved news", style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {},
            ),
            const Divider(),
            const SizedBox(height: 10),
            InkWell(
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(Icons.settings),
                  SizedBox(width: 10),
                  Text("Setting", style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {
                // setState(() {
                //   blogTogle = !blogTogle;
                // });
              },
            ),
            // Visibility(
            // visible: blogTogle,
            //   child: Padding(
            //     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            //     child: Column(
            //       children: [
            //         InkWell(
            //           child: Text(" - blog 2", style: TextStyle(fontSize: 18)),
            //           onTap: () {},
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            const SizedBox(height: 20),
            InkWell(
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(Icons.supervised_user_circle_outlined),
                  SizedBox(width: 10),
                  Text("invite you're freinds", style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {},
            ),
            const SizedBox(height: 20),
            InkWell(
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(Icons.newspaper),
                  SizedBox(width: 10),
                  Text("about us", style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {},
            ),
            const SizedBox(height: 20),
            InkWell(
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(Icons.support),
                  SizedBox(width: 10),
                  Text("support", style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {},
            ),
            const SizedBox(height: 20),
            InkWell(
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(Icons.contact_page),
                  SizedBox(width: 10),
                  Text("contact us", style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {},
            ),
            const SizedBox(height: 20),
            InkWell(
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Icon(Icons.update),
                  SizedBox(width: 10),
                  Text("check updates", style: TextStyle(fontSize: 18)),
                ],
              ),
              onTap: () {},
            ),
            const SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Developed By",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(width: 10),
                Text(
                  "Alireza Hosseini",
                  style: TextStyle(color: Colors.redAccent, fontSize: 17),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
