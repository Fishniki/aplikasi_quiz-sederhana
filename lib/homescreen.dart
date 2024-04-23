import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Jawab Pertanyaanku Ya!!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/img/home.png",
            width: 150,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(Icons.arrow_right),
                  Text(
                    "Mulai Quiz",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.pink),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
