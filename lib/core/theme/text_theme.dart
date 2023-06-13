import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';


class CustomTextTheme {

  static const textColorLight = blackColor;
  static const textColorDark = whiteColor;

  static TextTheme get textThemeLight {
    return textTheme(textColor: textColorLight);
  }

  static TextTheme get textThemeDark {
    return textTheme(textColor: textColorDark);
  }

  static TextTheme textTheme({required Color textColor}) {
    const FontWeight bold = FontWeight.w700;
    const FontWeight medium = FontWeight.w500;
    const FontWeight regular = FontWeight.w400;

    return TextTheme(
      headlineLarge: GoogleFonts.ubuntu(
        color: textColor,
        fontSize: 24,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      headlineMedium: GoogleFonts.ubuntu(
        color: textColor,
        fontSize: 20,
        fontWeight: medium,
        letterSpacing: 0.0,
      ),
      headlineSmall: GoogleFonts.ubuntu(
        color: textColor,
        fontSize: 12,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      displayLarge: GoogleFonts.ubuntu(
        color: whiteColor,
        fontSize: 24,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      displayMedium: GoogleFonts.ubuntu(
        color: greyColor,
        fontSize: 16,
        fontWeight: regular,
        decoration: TextDecoration.underline,
        letterSpacing: 0.0,
      ),
      displaySmall: GoogleFonts.ubuntu(
        color: Colors.green,
        fontSize: 16,
        fontWeight: regular,
        decoration: TextDecoration.underline,
        letterSpacing: 0.0,
      ),
      bodyLarge: GoogleFonts.ubuntu(
        color: mainColor,
        fontSize: 20,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      bodyMedium: GoogleFonts.ubuntu(
        color: mainColor,
        fontSize: 16,
        fontWeight: medium,
        letterSpacing: 0.0,
      ),
      bodySmall: GoogleFonts.ubuntu(
        color: mainColor,
        fontSize: 12,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      labelLarge: GoogleFonts.ubuntu(
        color: greyColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      ),
      labelMedium: GoogleFonts.ubuntu(
        color: greyColor,
        fontSize: 12,
        fontWeight: medium,
        decoration: TextDecoration.underline,
        letterSpacing: 0.0,
      ),
      labelSmall: GoogleFonts.ubuntu(
        color: greyColor,
        fontSize: 12,
        fontWeight: medium,
        letterSpacing: 0.0,
      ),
    );
  }
}
