// ignore_for_file: file_names

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
          foregroundColor: Colors.purpleAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      child: Text(text),
    );
  }
}
