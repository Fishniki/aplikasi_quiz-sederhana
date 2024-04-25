// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
      textAlign: TextAlign.center,
    );
  }
}
