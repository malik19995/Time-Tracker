import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? weight;
  const AppText(
    this.text, {
    super.key,
    this.color = Colors.white,
    this.fontSize,
    this.weight = FontWeight.w300,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.rubik(
        color: color,
        fontSize: fontSize,
        fontWeight: weight,
      ),
      textAlign: TextAlign.center,
    );
  }
}
