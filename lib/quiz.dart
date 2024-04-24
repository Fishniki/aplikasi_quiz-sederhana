import 'package:aplikasi_quiz/homescreen.dart';
import 'package:aplikasi_quiz/question_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";

  void swapScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  // Widget? activeScreen; cara ke-1
  //cara ke-1
  // @override
  // void initState() {
  //   activeScreen = HomeScreen(() {
  //     swapScreen();
  //   });
  //   super.initState();
  // }

  // void swapScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    //cara 3
    Widget screenWigdet = HomeScreen(swapScreen);
    if (activeScreen == "question-screen") {
      screenWigdet = const QuestionsScreen();
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.purpleAccent,
          body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purpleAccent, Colors.pink],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              child: screenWigdet
            ),
        )
      );
  }
}
