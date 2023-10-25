import 'dart:ui';

import 'package:finefound/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    hintColor: Colors.grey.shade500,
    splashColor: Colors.grey.shade700,
    secondaryHeaderColor: Colors.blue.shade900,
    indicatorColor: Color.fromARGB(255, 236, 244, 250),
    colorScheme: ColorScheme.light(
        background: Colors.white,
        primary: Color(0xFF0868DD),
        secondary: Colors.white,
        tertiary: Color(0xFF0868DD)));

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF17212B),
    hintColor: Colors.grey.shade400,
    splashColor: Colors.white,
    secondaryHeaderColor: Colors.white,
    indicatorColor: Color(0xFF17212B),
    colorScheme: ColorScheme.dark(
        background: Color(0xFF0B122C),
        primary: Color(0xFF132A5E),
        secondary: Color(0xFF0B122C),
        tertiary: Colors.white));
