import 'package:aplikasi_quiz/models/text-style.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chooseAnswer});

  final List<String> chooseAnswer;
  List<Map<String, Object>> getSummarryData(){
    final List<Map<String, Object>> summary = [];
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomText("Jumlah Soal X, Yang terjawab Y"),
                  const SizedBox(height: 20,),
                  TextButton(onPressed: (){}, child: const Text("Restart Quiz"))
                ],
              ),
          ),
    );
  }
}