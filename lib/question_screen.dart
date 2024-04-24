

import 'package:aplikasi_quiz/cutomwigdet/text-style.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(  {super.key});


  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText("Aku Niki")
    );
  }
}