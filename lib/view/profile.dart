import 'package:flutter/material.dart';
import 'package:blogproject/component/menu.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

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
              icon: const Icon(Icons.supervised_user_circle),
              onPressed: () {
                Navigator.of(context).pushNamed("Register");
              },
            ),
            const SizedBox(width: 30)
          ]),
      drawer: const Menu(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Image(
                  image: AssetImage(
                      "lib/assets/images/istockphoto-1300845620-612x612.jpg"),
                  width: 100,
                  height: 100),
              const Text(
                "Your Username",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 280),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 5,
                  fillColor: Colors.blue,
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "edit your username",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 5,
                  fillColor: Colors.blue,
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "edit your username",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 5,
                  fillColor: Colors.blue,
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "edit your username",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
