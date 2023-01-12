import 'package:blogproject/services/responsive.dart';
import 'package:flutter/material.dart';
import 'package:blogproject/component/mytextfield.dart';

class Regmob extends StatefulWidget {
  const Regmob({super.key});

  @override
  State<Regmob> createState() => _RegmobState();
}

class _RegmobState extends State<Regmob> {
  final TextEditingController phonenumberctr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const Text("sign in")],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Image(
                  image: AssetImage("lib/assets/images/regmob.png"),
                  width: 200,
                  height: 200),
              const SizedBox(height: 30),
              const Text(
                "please enter you're phone number and wait for varification code to finalize your enterance",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const Responsive(
                  //   desktop:
                  //       Text("phone number :", style: TextStyle(fontSize: 18)),
                  //   mobile: SizedBox(),
                  // ),
                  Visibility(
                    visible: Responsive.isMobile(context),
                    replacement: const Text("replacement"),
                    child: const Text(
                      "visible",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Mytextfield(
                      label: "phone number", controller: phonenumberctr),
                  const SizedBox(width: 35)
                ],
              ),
              const SizedBox(height: 110),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'entrance means accepting',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Text("conditions",
                        style: TextStyle(color: Colors.redAccent))
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 400,
                child: RawMaterialButton(
                  onPressed: () {
                    print(" phone number: ${phonenumberctr.text}");
                  },
                  fillColor: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "proceed to your account",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Icon(Icons.verified)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

funct(context) {
  // if (MediaQuery.of(context).size.width > 450) {
  //   return MediaQuery.of(context).size.width - 100;
  // } else {
  //   return 200;
  // }
  // if (MediaQuery.of(context).size.width > 450) return 200;

  MediaQuery.of(context).size.width > 450 ? 450 : 200;
}
