import 'package:flutter/material.dart';
import 'package:tortilleria_chaly/config/colors.dart';

final customTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    backgroundColor: darkBlue,
    foregroundColor: darkBlue,
  ),
  //BottomNavigationBarThemeData
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: darkBlue,
    selectedItemColor: pink,
    unselectedItemColor: white,
    selectedLabelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    unselectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
  ),

  //ListTileThemeData
  listTileTheme: const ListTileThemeData(
    tileColor: darkGrey,
    titleTextStyle: TextStyle(
      color: white,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    subtitleTextStyle: TextStyle(
      color: grey,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),

  //FloatingActionButtonThemeData
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: pink,
    foregroundColor: white,
  ),

  //InputDecorationTheme
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(fontSize: 18),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    floatingLabelStyle:
        TextStyle(color: darkBlue, fontSize: 23, fontWeight: FontWeight.w500),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: darkBlue, width: 2),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: darkGrey, width: 2),
      borderRadius: BorderRadius.all(
        Radius.circular(2),
      ),
    ),
  ),
);
