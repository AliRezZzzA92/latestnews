import 'package:flutter/material.dart';

class Mytextfield extends StatefulWidget {
  const Mytextfield({super.key, required this.data});
  final String data;

  @override
  State<Mytextfield> createState() => _MytextfieldState();
}

class _MytextfieldState extends State<Mytextfield> {
  final GlobalKey _formkey = GlobalKey<FormState>();
  TextEditingController numberctr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 600,
      child: Form(
        key: _formkey,
        child: TextFormField(
          controller: numberctr,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              hintText: widget.data),
          validator: (value) {
            if (value!.startsWith("09")) {
              return ("phone number not correct");
            }
          },
        ),
      ),
    );
  }
}
