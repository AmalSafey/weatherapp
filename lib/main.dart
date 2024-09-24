import 'package:flutter/material.dart';
import 'package:flutter_application_47weather/home.dart';
import 'package:flutter_application_47weather/min.dart'; // Ensure this imports your correct home screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      HomeScreen.routeName: (context) => HomeScreen(),
    }, debugShowCheckedModeBanner: false, home: minhome());
  }
}
