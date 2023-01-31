import 'package:blogproject/component/blog.dart';
import 'package:flutter/material.dart';
import 'controller/blog_ctr.dart' as controller;

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [
                // Responsive(
                //     mobile: Text("Responsive from MOBILE"),
                //     desktop: Text("Responsive from dESKTOP")),
                Myblog(
                    imagee: AssetImage("lib/assets/images/login.webp"),
                    texxt: "welcome to my first blog"),

                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                      "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eaque dolor nulla culpa rem ducimus saepe molestias pariatur distinctio hic, corrupti, nemo, earum temporibus? Dolore, asperiores eum. Consequatur, non aspernatur fugiat sunt tenetur recusandae. Animi officia mollitia tempore officiis, unde dolor nulla molestiae ducimus, modi quisquam, repellat ex hic dignissimos velit possimus consectetur rem? Rerum aliquam debitis reiciendis, soluta nostrum est numquam quia dolorum dolores! Quaerat vel id corporis, odio corrupti beatae repellat. Illo, tenetur recusandae! Ut ipsum eveniet ipsam aperiam ullam aut doloremque odit sequi quae harum, libero, tenetur iste sunt. Itaque commodi tempore voluptatum necessitatibus repudiandae ea accusamus vero?"),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                      "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eaque dolor nulla culpa rem ducimus saepe molestias pariatur distinctio hic, corrupti, nemo, earum temporibus? Dolore, asperiores eum. Consequatur, non aspernatur fugiat sunt tenetur recusandae. Animi officia mollitia tempore officiis, unde dolor nulla molestiae ducimus, modi quisquam, repellat ex hic dignissimos velit possimus consectetur rem? Rerum aliquam debitis reiciendis, soluta nostrum est numquam quia dolorum dolores! Quaerat vel id corporis, odio corrupti beatae repellat. Illo, tenetur recusandae! Ut ipsum eveniet ipsam aperiam ullam aut doloremque odit sequi quae harum, libero, tenetur iste sunt. Itaque commodi tempore voluptatum necessitatibus repudiandae ea accusamus vero?"),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                      "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eaque dolor nulla culpa rem ducimus saepe molestias pariatur distinctio hic, corrupti, nemo, earum temporibus? Dolore, asperiores eum. Consequatur, non aspernatur fugiat sunt tenetur recusandae. Animi officia mollitia tempore officiis, unde dolor nulla molestiae ducimus, modi quisquam, repellat ex hic dignissimos velit possimus consectetur rem? Rerum aliquam debitis reiciendis, soluta nostrum est numquam quia dolorum dolores! Quaerat vel id corporis, odio corrupti beatae repellat. Illo, tenetur recusandae! Ut ipsum eveniet ipsam aperiam ullam aut doloremque odit sequi quae harum, libero, tenetur iste sunt. Itaque commodi tempore voluptatum necessitatibus repudiandae ea accusamus vero?"),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                      "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eaque dolor nulla culpa rem ducimus saepe molestias pariatur distinctio hic, corrupti, nemo, earum temporibus? Dolore, asperiores eum. Consequatur, non aspernatur fugiat sunt tenetur recusandae. Animi officia mollitia tempore officiis, unde dolor nulla molestiae ducimus, modi quisquam, repellat ex hic dignissimos velit possimus consectetur rem? Rerum aliquam debitis reiciendis, soluta nostrum est numquam quia dolorum dolores! Quaerat vel id corporis, odio corrupti beatae repellat. Illo, tenetur recusandae! Ut ipsum eveniet ipsam aperiam ullam aut doloremque odit sequi quae harum, libero, tenetur iste sunt. Itaque commodi tempore voluptatum necessitatibus repudiandae ea accusamus vero?"),
                ),
              ],
            ),
          )),
    ));
  }
}
// controller.blogController(context).then((value) => value);
//                 setState(() {});