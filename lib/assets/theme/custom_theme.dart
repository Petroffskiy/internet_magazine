import 'package:flutter/material.dart';
import 'package:internet_magazine/assets/colors/colors.dart';

ThemeData customTheme() => ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: blackColor,
        titleTextStyle: TextStyle(color: grey),
        iconTheme: IconThemeData(color: grey),
        actionsIconTheme: IconThemeData(color: grey),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: blackColor,
        selectedItemColor: mainColorBlue,
        unselectedItemColor: grey,
      ),
    );
