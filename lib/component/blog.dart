import 'package:flutter/material.dart';

class Myblog extends StatefulWidget {
  const Myblog({super.key, required this.imagee, required this.texxt});
  final ImageProvider<Object> imagee;
  final String texxt;

  @override
  State<Myblog> createState() => _MyblogState();
}

class _MyblogState extends State<Myblog> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: widget.imagee, width: 150, height: 150),
          const SizedBox(height: 15),
          Text(
            widget.texxt,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Divider(
              color: Colors.redAccent,
              height: 20,
              thickness: 3,
            ),
          )
        ],
      ),
    );
  }
}
