import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 245, 245, 245),
  primaryColor: const Color.fromARGB(255, 255, 255, 255),
  primarySwatch: Colors.purple,
  dividerColor: const Color.fromARGB(60, 0, 0, 0),
  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
    elevation: 0,
    backgroundColor: const Color.fromARGB(255, 222, 222, 222),
    titleTextStyle: TextStyle(
      color: const Color.fromARGB(255, 0, 0, 0),
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
    ),
  ),
  listTileTheme: const ListTileThemeData(
    iconColor: Color.fromARGB(255, 0, 0, 0),
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: const Color.fromARGB(255, 0, 0, 0),
      fontWeight: FontWeight.w500,
      fontSize: 18.sp,
    ),
    labelSmall: TextStyle(
      color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.6),
      fontWeight: FontWeight.w700,
      fontSize: 12.sp,
    ),
    headlineMedium: TextStyle(
      color: const Color.fromARGB(255, 0, 0, 0),
      fontWeight: FontWeight.w500,
      fontSize: 229.sp,
    ),
  ),
);
