import 'package:blogproject/component/mytextfield.dart';
import 'package:flutter/material.dart';

class contactus extends StatefulWidget {
  const contactus({super.key});

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {
  TextEditingController nameCtr = TextEditingController();
  TextEditingController emailCtr = TextEditingController();
  TextEditingController textCtr = TextEditingController();
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
      body: Form(
        child: SizedBox(
          child: Column(
            
            children: [
              TextField(controller: nameCtr),
              Mytextfield(label: "name",controller: nameCtr,)],
          ),
        ),
      ),
    );
  }
}
