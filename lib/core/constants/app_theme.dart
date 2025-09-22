import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: AppFonts.poppins,
    primaryColor: AppColors.primary,
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.textDark),
      bodyMedium: TextStyle(color: AppColors.textDark),
      bodySmall: TextStyle(color: AppColors.textDark),
      titleLarge: TextStyle(color: AppColors.textDark),
      titleMedium: TextStyle(color: AppColors.textDark),
      titleSmall: TextStyle(color: AppColors.textDark),
    ),
  );
}
