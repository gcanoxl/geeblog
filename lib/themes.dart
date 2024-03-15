import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.deepPurple,
      // shape: const RoundedRectangleBorder(side: BorderSide.),
      textStyle: const TextStyle(fontSize: 20),
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding / 2,
        horizontal: defaultPadding,
      ),
    ),
  ),
  useMaterial3: true,
);
