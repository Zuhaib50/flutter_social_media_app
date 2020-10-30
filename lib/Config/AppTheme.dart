import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/Config/AppColors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: Color(0xffecf0f5),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.black,
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    cardColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: Colors.black,
      onPrimary: Colors.black,
      primaryVariant: Colors.black54,
      surface: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    primaryTextTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Poppins',
      ),
      headline3: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        letterSpacing: 1,
        color: primary,
      ),
      headline5: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        letterSpacing: 1,
        color: primary,
      ),
    ),
    accentTextTheme: TextTheme(
      subtitle1: TextStyle(color: Colors.black, height: 1.5, fontSize: 12),
    ),
    textTheme: TextTheme(
      //  bodyText1: TextStyle(color: Colors.white54, height: 1.5, fontSize: 12),
      title: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          fontFamily: 'Poppins'),
      subtitle: TextStyle(
          color: Colors.black,
          //fontWeight: FontWeight.bold,
          fontSize: 16.0,
          fontFamily: 'Poppins'),
    ),
  );
}
