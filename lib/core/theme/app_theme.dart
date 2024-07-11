import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'font_manager.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.purple,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        toolbarTextStyle: const TextStyle(color: AppColors.white),
        titleTextStyle: GoogleFonts.poppins(
            fontWeight: FontWeightManager.medium,
            fontSize: MyFonts.size20,
            letterSpacing: 0.5,
            color: Colors.white),
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
      ),
      brightness: Brightness.light,

      //bottomNavigationBar
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.primary,
        selectedItemColor: AppColors.white,
      ),

      //timepicker
      timePickerTheme: const TimePickerThemeData(
        backgroundColor: AppColors.white,
      ),

      //dialogTheme
      dialogTheme: const DialogTheme(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),
        // actionsPadding: EdgeInsets.all(10),
      ),

      // card theme
      cardTheme: const CardTheme(
        elevation: 5,
        color: AppColors.white,
        shadowColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        margin: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
      ),
      textTheme: GoogleFonts.poppinsTextTheme(),
      scaffoldBackgroundColor: Colors.white);
}
