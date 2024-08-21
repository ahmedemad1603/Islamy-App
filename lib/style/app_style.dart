import 'package:flutter/material.dart';

class AppStyle
{
  static const Color lightPrimaryColor = Color(0xffB7935F);
  static const Color darkPrimaryColor = Color(0xff141A2E);
  static const Color darkSecondaryColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    textTheme: TextTheme(
        titleSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700
        ),
        displayMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400
        ),
        bodySmall: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.black,
          fontSize: 20
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: lightPrimaryColor
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black
        ),
        displaySmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 25,
            color: Colors.black
        ),
        displayLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 25,
            color: Colors.white
        )
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xff242424),
        ),
        centerTitle: true
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
            size: 40
        ),
        unselectedIconTheme: IconThemeData(
            size: 40
        )
    ),
    dividerTheme: DividerThemeData(
      color: lightPrimaryColor,
      thickness: 3,
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
      elevation: 30,
      surfaceTintColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: lightPrimaryColor,
        primary: lightPrimaryColor,
        onPrimary: Colors.white,
        secondary: lightPrimaryColor.withOpacity(0.57),
        onTertiary: lightPrimaryColor.withOpacity(0.57),
        onSecondary: Colors.black,
        onPrimaryContainer: lightPrimaryColor,
        onSecondaryContainer: Colors.white
    )
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xffF8F8F8),
        ),
        centerTitle: true
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: darkSecondaryColor,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
            size: 40
        ),
        unselectedIconTheme: IconThemeData(
            size: 40
        )
    ),
      dividerTheme: DividerThemeData(
        color: darkSecondaryColor,
        thickness: 3,
      ),
      textTheme: TextTheme(
          titleSmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white
          ),
          displayMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white
          ),
          bodySmall: TextStyle(
              fontWeight: FontWeight.w400,
              color: darkSecondaryColor,
              fontSize: 20
          ),
          titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: darkSecondaryColor
          ),
          titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
          ),
          displaySmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 25,
            color: Colors.white
          ),
          displayLarge: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 25,
              color: Colors.black
          )
      ),
      cardTheme: const CardTheme(
        color: darkPrimaryColor,
        elevation: 30,
        surfaceTintColor: darkPrimaryColor,
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimaryColor,
        primary: darkPrimaryColor,
        secondary: darkSecondaryColor,
        onPrimaryContainer: darkSecondaryColor,
        onSecondaryContainer: darkPrimaryColor,
        onTertiary: darkPrimaryColor
    )
  );
}