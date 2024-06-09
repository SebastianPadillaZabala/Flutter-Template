import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primary = Color.fromARGB(255, 44, 190, 129);
const Color secundary = Color.fromARGB(214, 255, 128, 0);
const Color black = Color.fromARGB(255, 0, 0, 0);
const Color white = Color.fromARGB(255, 249, 249, 251);
const Color blue = Color.fromARGB(255, 239, 233, 255);
const Color green = Color.fromARGB(255, 231, 246, 223);
const Color orange = Color.fromARGB(255, 255, 236, 233);
const Color red = Color.fromARGB(255, 255, 81, 68);

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
      textStyle: const TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.grey));
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold));
}

TextStyle get subjectStyle {
  return const TextStyle(
      fontFamily: 'Tempus Sans ITC',
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: black);
}
