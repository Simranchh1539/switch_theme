import 'package:flutter/material.dart';

enum AppTheme {
  pinkLight,
  pinkdark,
  bluedark,
  bluelight,
  greenlight,
  greendark
}

final appthemedata = {
  AppTheme.pinkLight: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.pink,
      backgroundColor: Colors.black38),
  AppTheme.pinkdark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.pink[700],
      backgroundColor: Colors.black38),
  AppTheme.bluedark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blue[900],
      backgroundColor: Colors.black38),
  AppTheme.bluelight: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      backgroundColor: Colors.black38),
  AppTheme.greenlight: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.green[100],
      backgroundColor: Colors.black38),
  AppTheme.greendark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.green[900],
      backgroundColor: Colors.black38),
};
