import 'package:aplikasi_quiz/data/questions.dart';
import 'package:aplikasi_quiz/models/question_sumary.dart';
import 'package:aplikasi_quiz/models/text-style.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   const ResultScreen({super.key, required this.chooseAnswer});

  final List<String> chooseAnswer;
  List<Map<String, Object>> getSummarryData(){
    
    final List<Map<String, Object>> summary = [];

    for ( var i = 0; i < chooseAnswer.length; i++ ){
      summary.add(
        {
          "qustion_index" : i,
          "question" : questions[i].soal,
          "correct_answer" :  questions[i].opsi[0],
          "user_answer" : chooseAnswer[i]
        }
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummarryData();
    final numTotalQuestions = questions.length;
    final numCorectAnswer = summaryData.where((data){
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return  SizedBox(
      width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomText("Jumlah Soal $numTotalQuestions, Jawaban yang benar $numCorectAnswer"),
                  const SizedBox(height: 20,),
                  QuestionsSummary(getSummarryData()),
                  const SizedBox(height: 20,),
                  TextButton(onPressed: (){}, child: const Text("Restart Quiz"))
                ],
              ),
          ),
    );
  }
}