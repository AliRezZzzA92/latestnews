import 'package:blogproject/homepage.dart';
import 'package:blogproject/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
