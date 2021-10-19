// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:social_media_app/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Social App",
      theme: ThemeData(primaryColor: Colors.blue),
      home: LoginScreen(),
    );
  }
}
