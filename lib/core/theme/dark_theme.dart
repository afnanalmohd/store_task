import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'text_theme.dart';


ThemeData darkThemeData() {
  return ThemeData(
    fontFamily: GoogleFonts.ubuntu.toString(),
    cardColor: darkGreyColor,
    highlightColor: darkColor,
    dividerColor: lightColor,
    focusColor: mainColor,
    hintColor: lightColor,
    hoverColor: darkGreyColor,
    indicatorColor: lightColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkColor,
    //
    textTheme: CustomTextTheme.textThemeDark,
    //
    iconTheme: const IconThemeData(color: mainColor),
    //
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: mainColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      ),
      backgroundColor: darkGreyColor,
      iconTheme: IconThemeData(color: mainColor, size: 30),
      elevation: 0.0,
      shadowColor: greyColor,
      centerTitle: true,
    ),
    //
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: darkGreyColor,
      elevation: 5.0,
      selectedItemColor: mainColor,
      unselectedItemColor: greyColor,
    ),
    //
    dialogTheme: const DialogTheme(
      backgroundColor: darkGreyColor,
      elevation: 0.0,
      alignment: Alignment.center,
      iconColor: mainColor,
      titleTextStyle: TextStyle(),
      contentTextStyle: TextStyle(),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
      )),
    ),
    //
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      minimumSize: const Size(382, 41),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      foregroundColor: darkColor,
      elevation: 0.4,
      backgroundColor: lightColor,
    )),
    //
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            foregroundColor: greyColor,
            side: const BorderSide(color: greyColor),
            padding: const EdgeInsets.symmetric(vertical: 20))),
    //
    tabBarTheme: const TabBarTheme(
        unselectedLabelColor: whiteColor,
        labelColor: whiteColor,
        labelStyle: TextStyle(color: whiteColor),
        indicator:
            UnderlineTabIndicator(borderSide: BorderSide(color: lightColor))),
    //
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: lightColor),
            borderRadius: BorderRadius.circular(5)),
        prefixIconColor: lightColor,
        suffixIconColor: lightColor,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(width: 1, color: mainColor)),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: lightColor,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: true,
        prefixStyle: const TextStyle(color: lightColor)),
    //
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: darkGreyColor,
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    //
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: lightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    //
    checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        checkColor: MaterialStateProperty.all(darkColor),
        fillColor: MaterialStateProperty.all(mainColor)),
    //
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(whiteColor),
        trackColor: MaterialStateProperty.all(whiteColor)),
    //
    radioTheme: RadioThemeData(fillColor: MaterialStateProperty.all(whiteColor)),
    //
    sliderTheme: const SliderThemeData(
        thumbColor: whiteColor,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20)),
    //
    popupMenuTheme: PopupMenuThemeData(
      color: whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0.0,
      // surfaceTintColor:,
      //
      textStyle: const TextStyle(color: mainColor),
      // labelTextStyle:,
      enableFeedback: true,
      // mouseCursor:,
    ),
    //
      floatingActionButtonTheme:const FloatingActionButtonThemeData(
          backgroundColor:mainColor,
          elevation: 0.0
      )
  );
}
