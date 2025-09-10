import 'package:flutter/material.dart';

ThemeData get lightTheme {
  return ThemeData(
    colorScheme: ColorScheme.highContrastLight()
  );
}

ThemeData get darkTheme {
  return ThemeData(
    appBarTheme: AppBarTheme(
      data: AppBarThemeData(
        backgroundColor: ColorScheme.highContrastDark().onPrimaryContainer,
      ),
    ),
    colorScheme: ColorScheme.highContrastDark(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorScheme.highContrastDark().onPrimaryContainer,
    ),
  );
}