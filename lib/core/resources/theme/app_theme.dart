import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_ap_p/core/resources/constant/app_colors.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Main colors
    scaffoldBackgroundColor: AppColors.primaryBackground,

    // Bottom navigation bar theme
    bottomNavigationBarTheme: _bottomNavigationBarTheme(),

    // App bar theme
    appBarTheme: _appBarTheme(),

    // Text theme
    textTheme: _textTheme(),
  );
}

// Bottom navigation bar theme
BottomNavigationBarThemeData _bottomNavigationBarTheme() {
  return const BottomNavigationBarThemeData(
    backgroundColor: AppColors.secondaryBackground,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.primaryText,
    type: BottomNavigationBarType.fixed,
  );
}

// App bar theme
AppBarTheme _appBarTheme() {
  return AppBarTheme(
    backgroundColor: AppColors.primaryBackground,
    elevation: 0,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    titleTextStyle: _getTextStyle(fontSize: 18, color: AppColors.secondaryText),
  );
}

// Text theme
TextTheme _textTheme() {
  return TextTheme(
    titleMedium: _getTextStyle(fontSize: 20, color: AppColors.secondaryText),
    titleSmall: _getTextStyle(fontSize: 18, color: AppColors.secondaryText),
    bodyLarge: _getTextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryText,
    ),
    bodyMedium: _getTextStyle(fontSize: 14, color: AppColors.secondaryText),
    bodySmall: _getTextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryText,
    ),
  );
}

// Helper function for text styles
TextStyle _getTextStyle({
  required double fontSize,
  FontWeight fontWeight = FontWeight.w600,
  required Color color,
}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}
