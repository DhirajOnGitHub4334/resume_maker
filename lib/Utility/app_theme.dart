import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';

class AppTheme {
  static ThemeData generalTheme({
    required String apptheme,
    required Color primaryColor,
  }) {
    return ThemeData(
      colorScheme: ColorScheme.light(primary: primaryColor),

      primaryColor: primaryColor,

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: AppColors.white,
      ),

      //TextField Input Decoration
      inputDecorationTheme: InputDecorationThemeData(
        isDense: true,
        labelStyle: TextStyle(color: AppColors.grey),
        hintStyle: TextStyle(color: AppColors.grey),
        errorStyle: TextStyle(color: AppColors.red),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.black),
        ),

        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.grey),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.black),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.red),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.red),
        ),
      ),

      //Elevated Btn
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(primaryColor),
          foregroundColor: WidgetStatePropertyAll(AppColors.white),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
          ),
        ),
      ),

      //Outline Btn
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.white),
          foregroundColor: WidgetStatePropertyAll(primaryColor),
          side: WidgetStatePropertyAll(BorderSide(color: primaryColor)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
          ),
        ),
      ),

      //TextButton
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(primaryColor),
        ),
      ),

      //Dialog Theme
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),

      //Date Picker Theme
      datePickerTheme: DatePickerThemeData(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        headerBackgroundColor: primaryColor,
        headerHeadlineStyle: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
        ),
        headerHelpStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),

        headerForegroundColor: Colors.white,
        dayStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
        weekdayStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
        yearStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.r)),
        cancelButtonStyle: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(primaryColor),
          backgroundColor: WidgetStatePropertyAll(AppColors.white),
        ),
        confirmButtonStyle: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(primaryColor),
          backgroundColor: WidgetStatePropertyAll(AppColors.white),
        ),
      ),

      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
    );
  }
}
