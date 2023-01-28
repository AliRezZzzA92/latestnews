import 'package:blogproject/controller/login_ctr.dart' as controller;
import 'package:blogproject/provider/login_state.dart';
import 'package:blogproject/services/responsive.dart';
import 'package:flutter/material.dart';
import 'package:blogproject/component/mytextfield.dart';
import 'package:blogproject/globals/globals.dart' as globals;
import 'package:provider/provider.dart';

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
            children: const [Text("sign in")],
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
              Text(
                "please enter you're phone number ${globals.me} and wait for varification code to finalize your enterance",
                style: const TextStyle(fontSize: 20),
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
                  width: 350,
                  child:
                      Consumer<Loginstate>(builder: ((context, value, child) {
                    return RawMaterialButton(
                      onPressed: () {
                        controller.loginController(
                            phonenumberctr.text, context);
                        // regmob(phonenumberctr.text).then(
                        //   (response) {
                        //     if (response.statusCode == 200) {
                        //       print("succes");
                        //     } else {
                        //       return "error";
                        //     }
                        //     print(response.statusCode);
                        //   },
                        // );
                      },
                      fillColor: globals.btn,
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
                          Icon(
                            Icons.verified,
                            color: Colors.white,
                          )
                        ],
                      ),
                    );
                  }))),
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
