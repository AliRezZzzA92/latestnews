import 'package:flutter/material.dart';

class Gridview2 extends StatelessWidget {
  const Gridview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 150, 30, 30),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(50),
          mainAxisSpacing: 20,
          crossAxisSpacing: 30,
          children: [
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: const Text(
                  "salam",
                  style: TextStyle(color: Colors.white),
                )),
            Container(
              alignment: Alignment.bottomCenter,
              // color: Colors.blue,
              child: const Text(
                "pelotical",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("lib/assets/images/politicalnews.webp"),
                      fit: BoxFit.fill)),
            ),
          ],
        ),
      ),
    );
  }
}

// Column(
//             children: [
//               GridView.count(
//                 crossAxisCount: 3,
//                 mainAxisSpacing: 20,
//                 crossAxisSpacing: 30,
//                 children: const [
//                   // Column(
//                   //   children: const [
//                   //     // Image(
//                   //     //   image: AssetImage("lib/assets/images/ploticalnews.webp"),
//                   //     //   width: 100,
//                   //     //   height: 100,
//                   //     // ),
//                   //     // Text(
//                   //     //   "political",
//                   //     //   style: TextStyle(color: Colors.white),
//                   //     // ),
//                   //   ],
//                   // ),
//                   FlutterLogo(),
//                   FlutterLogo(),
//                 ],
//               ),
//             ],