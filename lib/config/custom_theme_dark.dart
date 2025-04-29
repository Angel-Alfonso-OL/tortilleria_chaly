import 'package:flutter/material.dart';
import 'package:tortilleria_chaly/config/colors.dart';

final customThemeDark = ThemeData(
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.white,
    unselectedItemColor: grey,
    selectedLabelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    unselectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
  ),
);
