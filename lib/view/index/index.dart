import 'package:blogproject/component/menu.dart';
import 'package:blogproject/model/dto/profilemodel/dtoblog_model.dart';
import 'package:flutter/material.dart';
import 'package:blogproject/controller/blog_ctr.dart' as controller;

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  var me =
      Dtoblog(imageblog: const AssetImage("assetName"), titleblog: "titleblog");
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
      drawer: const Menu(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            InkWell(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(
                            "lib/assets/images/grid/politicalnews.webp"),
                        fit: BoxFit.fill)),
                child: const Text(
                  "political",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      backgroundColor: Colors.black),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("blog");
              },
            ),
            InkWell(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage(
                            "lib/assets/images/grid/celebrities.jpg"),
                        fit: BoxFit.fill)),
                child: const Text(
                  "celebrities",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      backgroundColor: Colors.black),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("blog");
              },
            ),
            InkWell(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage("lib/assets/images/grid/society.jpg"),
                        fit: BoxFit.fill)),
                child: const Text(
                  "society",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      backgroundColor: Colors.black),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("blog");
              },
            ),
            InkWell(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage("lib/assets/images/grid/sports.jpg"),
                        fit: BoxFit.fill)),
                child: const Text(
                  "sports",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      backgroundColor: Colors.black),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("blog");
              },
            ),
            InkWell(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage(
                            "lib/assets/images/grid/international.jpg"),
                        fit: BoxFit.fill)),
                child: const Text(
                  "international",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      backgroundColor: Colors.black),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("blog");
              },
            ),
            InkWell(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image:
                            AssetImage("lib/assets/images/grid/economics.jpg"),
                        fit: BoxFit.fill)),
                child: const Text(
                  "economics",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      backgroundColor: Colors.black),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("blog");
              },
            ),
            InkWell(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage("lib/assets/images/grid/movies.jpg"),
                        fit: BoxFit.fill)),
                child: const Text(
                  "movies",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      backgroundColor: Colors.black),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("blog");
              },
            ),
            InkWell(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage("lib/assets/images/grid/health.jpg"),
                        fit: BoxFit.fill)),
                child: const Text(
                  "health",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      backgroundColor: Colors.black),
                ),
              ),
              onTap: () => Navigator.of(context).pushNamed("blog"),
            ),
            InkWell(
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage("lib/assets/images/grid/music.jpg"),
                        fit: BoxFit.fill)),
                child: const Text(
                  "music",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      backgroundColor: Colors.black),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("blog");
              },
            ),
          ],
        ),
      ),
    );
  }
}

// final List<Image> myimages = [
//   const Image(
//     image: AssetImage("lib/assets/images/politicalnews.webp"),
//     fit: BoxFit.cover,
//   ),
//   const Image(
//       image: AssetImage("lib/assets/images/politicalnews.webp"),
//       fit: BoxFit.cover),
//   const Image(
//       image: AssetImage("lib/assets/images/politicalnews.webp"),
//       fit: BoxFit.cover),
//   const Image(
//       image: AssetImage("lib/assets/images/politicalnews.webp"),
//       fit: BoxFit.cover),
//   const Image(
//       image: AssetImage("lib/assets/images/politicalnews.webp"),
//       fit: BoxFit.cover),
//   const Image(
//       image: AssetImage("lib/assets/images/politicalnews.webp"),
//       fit: BoxFit.cover),
// ];

// final List<ListView> me = [
//   ListView.builder(
//     itemBuilder: (context, int) {
//       return Stack(
//         children: [
//           const Image(
//             image: AssetImage("lib/assets/images/politicalnews.webp"),
//             fit: BoxFit.cover,
//           ),
//           const Text("data")
//         ],
//       );
//     },
//   )
// ];
