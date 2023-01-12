import 'package:flutter/material.dart';

class Mytextfield extends StatefulWidget {
  const Mytextfield({
    super.key,
    required this.label,
    required this.controller,
  });
  final String label;
  final TextEditingController controller;

  @override
  State<Mytextfield> createState() => _MytextfieldState();
}

class _MytextfieldState extends State<Mytextfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width > 450
          ? (MediaQuery.of(context).size.width - 250)
          : 200,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            hintText: widget.label),
        validator: (value) {
          if (value!.startsWith("09")) {
            return ("phone number not correct");
          }
        },
      ),
    );
  }
}
