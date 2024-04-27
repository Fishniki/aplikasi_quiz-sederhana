import 'package:aplikasi_quiz/models/text-style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomText("Jawab Pertanyanku Ya!!"),
          const SizedBox(height: 20,),
          Image.asset(
            "assets/img/home.png",
            width: 200,
          ),
        
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.deepPurpleAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                  )
              ),
            onPressed: startQuiz,
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.pinkAccent,
            ),
            label: const Text(
              "Mulai Quiz",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),
            ),
          )
        ],
      ),
    );
  }
}
