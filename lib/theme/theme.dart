import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
  primaryColor: Colors.black,
  primarySwatch: Colors.pink,
  dividerColor: Colors.white24,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 31, 31, 31),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
  ),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: TextTheme(
    bodyMedium: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: Colors.white.withOpacity(0.6),
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
    headlineMedium: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 24,
    ),
  ),
);


final lightTheme = ThemeData(
  scaffoldBackgroundColor: Color.fromARGB(255, 245, 245, 245),
  primaryColor: Colors.black,
  primarySwatch: Colors.pink,
  dividerColor: const Color.fromARGB(60, 0, 0, 0),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 222, 222, 222),
    titleTextStyle: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
  ),
  listTileTheme: const ListTileThemeData(iconColor: Color.fromARGB(255, 0, 0, 0)),
  textTheme: TextTheme(
    bodyMedium: const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.6),
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
    headlineMedium: const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontWeight: FontWeight.w500,
      fontSize: 24,
    ),
  ),
);