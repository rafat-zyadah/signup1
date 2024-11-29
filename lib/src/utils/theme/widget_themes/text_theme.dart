import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemeR {
  static var lightTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
        color: Colors.black87, fontSize: 23, fontWeight: FontWeight.w900),
    titleSmall: GoogleFonts.poppins(
        color: Colors.black87, fontSize: 23, fontWeight: FontWeight.bold),
    displayLarge: GoogleFonts.montserrat(
        color: Colors.black87, fontSize: 30, fontWeight: FontWeight.w900),
    bodyLarge: GoogleFonts.poppins(
        color: Colors.black87, fontSize: 15, fontWeight: FontWeight.w500),
    bodyMedium: GoogleFonts.poppins(
        color: Colors.black87, fontSize: 14, fontWeight: FontWeight.w400),
    titleLarge: GoogleFonts.poppins(
        color: Colors.black87, fontSize: 17, fontWeight: FontWeight.w700),
  );
  static var darkTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
        color: Colors.white70, fontSize: 23, fontWeight: FontWeight.w600),
    titleSmall: GoogleFonts.poppins(
        color: Colors.white60, fontSize: 23, fontWeight: FontWeight.bold),
    displayLarge: GoogleFonts.montserrat(
        color: Colors.white60, fontSize: 30, fontWeight: FontWeight.w900),
    bodyLarge: GoogleFonts.poppins(
        color: Colors.white60, fontSize: 15, fontWeight: FontWeight.w500),
    bodyMedium: GoogleFonts.poppins(
        color: Colors.white60, fontSize: 14, fontWeight: FontWeight.w400),
    titleLarge: GoogleFonts.poppins(
        color: Colors.white60, fontSize: 17, fontWeight: FontWeight.w700),
  );
}




/* 

headline1	displayLarge
headline2	displayMedium
headline3	displaySmall
headline4	headlineMedium
headline5	headlineSmall
headline6	titleLarge
subtitle1	titleMedium
subtitle2	titleSmall
bodyText1	bodyLarge
bodyText2	bodyMedium
caption	bodySmall
button	labelLarge
overline	labelSmall */