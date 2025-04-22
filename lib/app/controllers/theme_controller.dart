import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  // Toggle the theme mode
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    updateTheme();  // Manually trigger theme update
  }

  // Update the theme dynamically
  void updateTheme() {
    Get.changeTheme(isDarkMode.value ? darkTheme() : lightTheme());
  }

  // Light theme data
  ThemeData lightTheme() {
    return ThemeData.light();
  }

  // Dark theme data
  ThemeData darkTheme() {
    return ThemeData.dark();
  }
}
