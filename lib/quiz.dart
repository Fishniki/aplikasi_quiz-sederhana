import 'package:aplikasi_quiz/data/questions.dart';
import 'package:aplikasi_quiz/homescreen.dart';
import 'package:aplikasi_quiz/question_screen.dart';
import 'package:aplikasi_quiz/result_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = "start-screen";

  void swapScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = "result-screen";
      });
    }
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
      screenWigdet = QuestionsScreen(oneSelectAnswer: chooseAnswer,);
    }

    if (activeScreen == "result-screen"){
      screenWigdet =  ResultScreen(chooseAnswer: selectedAnswer,);
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
