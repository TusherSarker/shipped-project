import 'package:flutter/material.dart';
import 'package:shipped/screen/welcome/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Shipped",
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen());
  }
}
