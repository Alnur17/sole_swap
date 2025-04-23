import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isDarkMode = false.obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    // Check stored theme preference on app start
    isDarkMode.value = box.read('isDarkMode') ?? false;  // Default is false (light theme)
    updateTheme();  // Update theme based on saved preference
  }

  // Toggle the theme mode
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    box.write('isDarkMode', isDarkMode.value);  // Save the new theme preference
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
