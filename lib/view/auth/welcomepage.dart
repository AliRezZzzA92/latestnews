import 'package:flutter/material.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushNamed("index");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Image(
                image: AssetImage("lib/assets/images/logo.png"),
                width: 200,
                height: 200),
            const SizedBox(height: 10),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("welcome to",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Text("blog",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  SizedBox(width: 10),
                  Text("project",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: 50,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("developed by",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(width: 10),
                Text("Alireza Hosseini",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red)),
              ],
            ),
            Row(
              children: const [SizedBox(height: 10)],
            )
          ],
        ),
      ),
    );
  }
}
