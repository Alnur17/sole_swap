import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../common/app_color/app_colors.dart';
import '../../app/controllers/theme_controller.dart';  // Adjust import path as needed

class CustomCircularContainer extends StatelessWidget {
  final String imagePath;
  final double padding;
  final Color backgroundColor;
  final VoidCallback onTap;

  const CustomCircularContainer({
    super.key,
    required this.imagePath,
    required this.onTap,
    this.padding = 12.0,
    this.backgroundColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: ShapeDecoration(
          shape: const CircleBorder(),
          color: themeController.isDarkMode.value ? AppColors.black : backgroundColor,
        ),
        child: Image.asset(
          imagePath,
          scale: 4,
          color: themeController.isDarkMode.value ? AppColors.white : AppColors.black,
        ),
      ),
    );
  }
}