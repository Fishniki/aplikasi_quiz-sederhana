
import 'package:aplikasi_quiz/data/questions.dart';
import 'package:aplikasi_quiz/models/button-custom.dart';
import 'package:aplikasi_quiz/models/text-style.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {


  @override
  Widget build(BuildContext context) {
  final curentSoal = questions[0];


    return SizedBox(
      width: double.infinity,
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(curentSoal.soal),
                const SizedBox(height: 30,),
                
                ButtonCustom(text: curentSoal.opsi[0], onTape: () { }),
                  const SizedBox(height: 10,),
                ButtonCustom(text: curentSoal.opsi[1], onTape: () { }),
                  const SizedBox(height: 10,),
                ButtonCustom(text: curentSoal.opsi[2], onTape: () { }),
                  const SizedBox(height: 10,),
                ButtonCustom(text: curentSoal.opsi[3], onTape: () { }),
              ],
            ),
        ),
    );
  }
}
