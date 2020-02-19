import 'package:flutter/material.dart';
import 'package:uthman/pages/loginEmailScreen.dart';
import 'package:uthman/pages/loginScreen.dart';
import 'package:uthman/pages/signUpEmailScreen.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue),
    title: "Uthman Tutorial",
    initialRoute: '/',
    routes: {
      '/': (context) => LoginScreen(),
      '/second': (context) => LoginEmail(),
      '/second/third': (context) => SignUpEmail()
    },
  ));
}
