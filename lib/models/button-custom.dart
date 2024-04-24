import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({super.key, required this.text, required this.onTape});
  //required menjelaskan bahwa parameter tersebut wajib diisi

  final String text;
  final void Function() onTape;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTape,
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 0),
          maximumSize: const Size(200, 50),
          foregroundColor: Colors.deepPurpleAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      child: Text(text),
    );
  }
}
