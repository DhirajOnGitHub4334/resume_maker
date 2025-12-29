import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_maker/Database/hive_service.dart';
import 'package:resume_maker/Utility/app_theme.dart';

import '../Database/theme_adapter.dart';

class ThemeProvider extends GetxController {
  final Rx<ThemeData> currentTheme = ThemeData().obs;

  @override
  void onInit() {
    super.onInit();
    loadInitTheme();
  }

  //Initial Theme
  void loadInitTheme() async {
    initialThemeData();

    final data = HiveService.getThemeData();

    currentTheme.value = AppTheme.generalTheme(
      apptheme: data?.appTheme ?? "Light",
      primaryColor: data?.primaryColorData ?? Colors.red,
    );
  }

  //Upddated Theme
  void updateNewTheme() {
    currentTheme.value = AppTheme.generalTheme(
      apptheme: "",
      primaryColor: Colors.red,
    );
  }

  void initialThemeData() {
    final apptheme = "Light";
    final primaryColor = Colors.blue; // AppColors.blue;

    final setUpThemedata = ThemeDataItem(
      appTheme: apptheme,
      primaryColor: primaryColor.value,
    );

    HiveService.addThemeData(setUpThemedata);
  }
}
