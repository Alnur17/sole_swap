import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/controllers/theme_controller.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  final ThemeController themeController = Get.put(ThemeController());

  // Initialize the theme mode based on saved preference
  themeController.isDarkMode.value =
      themeController.box.read('isDarkMode') ?? false;

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode:
          themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
    ),
  );
}
