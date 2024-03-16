import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';

const backgroundColor = Color(0xFFFFFFFF);
const dividerColor = Color(0xFFF1F3F5);
const menuTextColor = Color(0xFF515C74);
const infoTextColor = Color(0xFF616C81);
const boldTextColor = Color(0xFF16243B);
const titleTextColor = Color(0xFF090E19);

final theme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Colors.deepPurple,
    secondary: Colors.deepPurple,
    background: backgroundColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: backgroundColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding * 0.6,
        horizontal: defaultPadding * 0.6,
      ),
    ),
  ),
  useMaterial3: true,
);
