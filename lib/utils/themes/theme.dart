import 'package:flutter/material.dart';
import 'package:studysphere/utils/themes/custom_themes/button_theme.dart';

// class STheme{
//   //
//   // static final ThemeData light = ThemeData(
//   //   buttonTheme: SButtonTheme.lightButton;
//   // );
// }

class MyCustomTheme {
  // MyCustomTheme._();
  static ThemeData myLightThemeDatas = ThemeData(
      appBarTheme:
      AppBarTheme(backgroundColor: Colors.white,),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        bodyLarge: const TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        bodyMedium: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),

        bodySmall: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),

        titleSmall: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        headlineMedium: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        headlineLarge: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        displayLarge: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        displayMedium: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        titleMedium: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        titleLarge: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        labelSmall: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        labelMedium: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        labelLarge: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        headlineSmall: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        displaySmall: TextStyle().copyWith(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
      ));

  static ThemeData myDarkThemeDatas = ThemeData(
      appBarTheme:
      AppBarTheme(backgroundColor: Colors.black, toolbarHeight: 100),
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(
        bodyLarge: const TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        titleMedium: const TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        bodySmall: const TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        bodyMedium: TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        titleSmall: TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        titleLarge: const TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        labelSmall: TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        headlineLarge: const TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        headlineMedium: const TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        displayLarge: const TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        displayMedium: TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        displaySmall: TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        headlineSmall: const TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        labelLarge: TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
        labelMedium: TextStyle().copyWith(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w900,
        ),
      ));
}
