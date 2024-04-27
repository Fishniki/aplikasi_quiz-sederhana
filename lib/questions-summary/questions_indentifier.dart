import 'package:flutter/material.dart';

class NumberQuestion extends StatelessWidget {
  const NumberQuestion(this.number, this.color, {super.key});

  final String number;
  final bool color;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: color ? Colors.green :Colors.red
        ),
        child: Text(number),
        );
  }
}
