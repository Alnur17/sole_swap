import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/controllers/theme_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  final ThemeController themeController = Get.put(ThemeController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
    ),
  );
}
