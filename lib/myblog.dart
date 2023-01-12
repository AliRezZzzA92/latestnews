import 'package:blogproject/component/blog.dart';
import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const [
                  Myblog(
                      imagee: AssetImage("lib/assets/images/login.webp"),
                      texxt: "welcome to my first blog")
                ],
              ),
            )));
  }
}
