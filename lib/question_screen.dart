
import 'dart:core';

import 'package:aplikasi_quiz/data/questions.dart';
import 'package:aplikasi_quiz/models/button-custom.dart';
import 'package:aplikasi_quiz/models/text-style.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.oneSelectAnswer});

  final void Function(String answer) oneSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionsIndex = 0;

  void answerQuestion(String selectedAnswer) {
    // currentQuestionsIndex = currentQuestionsIndex + 1;
    // currentQuestionsIndex += 1;
    widget.oneSelectAnswer(selectedAnswer);

    setState(() {
      currentQuestionsIndex++;
    });
  }

  void previousQuestion() {
    setState(() {
      currentQuestionsIndex--;
      if(currentQuestionsIndex < 0){
        // print("KUNTUL");
      }
    });
  }

  

  @override
  Widget build(BuildContext context) {
  final curentSoal = questions[currentQuestionsIndex];


    return SizedBox(
      width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomText(curentSoal.soal),
       
                  const SizedBox(height: 30,),
            
                  //mengconvert tipe data menjadi sebuah string
                  //
                  ...curentSoal.getShuffLedAnswer().map((text){
                    return ButtonCustom(text: text, onTape: (){answerQuestion(text);});
                  }),

                  // const SizedBox(height: 50,),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     ElevatedButton(onPressed: previousQuestion, child: const Icon(Icons.arrow_left)),
                  //     // ElevatedButton(onPressed: (){answerQuestion(answer)}, child: const Icon(Icons.arrow_right))

                  //   ],
                  // )
                ],
              ),
          ),
    );
  }
}
