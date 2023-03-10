import 'package:blogproject/homepage.dart';
import 'package:blogproject/provider/login_state.dart';
import 'package:blogproject/provider/register_state.dart';
import 'package:blogproject/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Registerstate()),
    ChangeNotifierProvider(create: (_) => Loginstate())
  ], child: const MyApp()));
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
