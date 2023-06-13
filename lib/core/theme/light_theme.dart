import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'text_theme.dart';


ThemeData lightThemeData() {
  return ThemeData(
    fontFamily: GoogleFonts.ubuntu.toString(),
    cardColor: whiteColor,
    highlightColor: greyLightColor,
    dividerColor: darkColor,
    focusColor: lightColor,
    hintColor: blackColor,
    indicatorColor: lightColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: lightColor,
    //
    textTheme: CustomTextTheme.textThemeLight,
    //
    drawerTheme: const DrawerThemeData(
      backgroundColor: whiteColor,
      scrimColor: greyColor,
    ),
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
      backgroundColor: whiteColor,
      iconTheme: IconThemeData(color: mainColor, size: 30),
      elevation: 0.0,
      shadowColor: greyColor,
      centerTitle: true,
    ),
    //
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: whiteColor,
      elevation: 5.0,
      selectedItemColor: mainColor,
      unselectedItemColor: greyColor,
    ),
    //
    dialogTheme: const DialogTheme(
      backgroundColor: whiteColor,
      elevation: 0.0,
      alignment: Alignment.center,
      iconColor: mainColor,
      titleTextStyle:TextStyle(
        color: mainColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.0,
      ),
      contentTextStyle: TextStyle(
        color: blackColor,
        fontSize: 18,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.0,
      ),
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
          elevation: 0.4,
          backgroundColor: blackColor,
        )),
    //
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: darkGreyColor,
            side: const BorderSide(color: greyLightColor),
            padding: const EdgeInsets.symmetric(vertical: 20))),
    //
    tabBarTheme: const TabBarTheme(
        unselectedLabelColor: whiteColor,
        labelColor: mainColor,
        labelStyle: TextStyle(color: mainColor),
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.transparent))),
    //
    inputDecorationTheme: InputDecorationTheme(
        contentPadding:
        const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          borderSide:const  BorderSide(
            color:greyColor,
          )
        ),
        prefixIconColor: greyColor,
        suffixIconColor: greyColor,
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
            color: greyColor,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: true,
        prefixStyle: const TextStyle(color: greyColor)),
    //
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: lightColor,
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    //
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: greyColor,
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
        checkColor: MaterialStateProperty.all(whiteColor),
        fillColor: MaterialStateProperty.all(mainColor)),
    //
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(mainColor),
      trackColor: MaterialStateProperty.all(blackColor),
    ),
    //
    radioTheme: RadioThemeData(fillColor: MaterialStateProperty.all(mainColor)),
    //
    sliderTheme: const SliderThemeData(
        thumbColor: mainColor,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20)),
    //
    popupMenuTheme: PopupMenuThemeData(
      color: mainColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 0.0,
      // surfaceTintColor:,
      textStyle: const TextStyle(color: blackColor),
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