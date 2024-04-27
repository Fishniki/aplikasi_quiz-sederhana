import 'package:aplikasi_quiz/questions-summary/questions_indentifier.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
            final isCorect = data["user_answer"] == data["correct_answer"];
          return Row(
            children: [
              NumberQuestion(((data["qustion_index"] as int) + 1).toString(),isCorect),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data["question"] as String),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data["user_answer"] as String),
                      Text(data["correct_answer"] as String)
                    ],
                  ),
                ),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
