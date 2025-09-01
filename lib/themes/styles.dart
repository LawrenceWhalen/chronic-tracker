import 'package:flutter/material.dart';

ThemeData get lightTheme {
  return ThemeData(
    colorScheme: ColorScheme.highContrastLight()
  );
}

ThemeData get darkTheme {
  return ThemeData(
    colorScheme: ColorScheme.highContrastDark()
  );
}