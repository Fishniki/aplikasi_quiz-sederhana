import 'package:aplikasi_quiz/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.purpleAccent, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
                ),
              ),
        child: const Scaffold(
          backgroundColor: Colors.purpleAccent,
          body: HomeScreen(),
        ),
      ),
    );
  }
}
