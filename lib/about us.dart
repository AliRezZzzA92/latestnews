import 'package:flutter/material.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

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
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                    child: Text(
                      "about us",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eaque dolor nulla culpa rem ducimus saepe molestias pariatur distinctio hic, corrupti, nemo, earum temporibus? Dolore, asperiores eum. Consequatur, non aspernatur fugiat sunt tenetur recusandae. Animi officia mollitia tempore officiis, unde dolor nulla molestiae ducimus, modi quisquam, repellat ex hic dignissimos velit possimus consectetur rem? Rerum aliquam debitis reiciendis, soluta nostrum est numquam quia dolorum dolores! Quaerat vel id corporis, odio corrupti beatae repellat. Illo, tenetur recusandae! Ut ipsum eveniet ipsam aperiam ullam aut doloremque odit sequi quae harum, libero, tenetur iste sunt. Itaque commodi tempore voluptatum necessitatibus repudiandae ea accusamus vero?"),
              ),
              SizedBox(height: 15),
              const Image(
                  image: AssetImage("lib/assets/images/login.webp"),
                  width: 300,
                  height: 300)
            ],
          )),
    );
  }
}
