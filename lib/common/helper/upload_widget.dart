import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';

import '../../../../../../common/app_text_style/styles.dart';
import '../../app/controllers/theme_controller.dart';

class UploadWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;
  final String label;
  final double height;
  final double width;
  final double iconSize;
  final TextStyle? labelStyle;

  const UploadWidget({
    super.key,
    required this.onTap,
    required this.imagePath,
    required this.label,
    this.height = 140,
    this.width = double.infinity,
    this.iconSize = 20,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.grey,
          style: BorderStyle.solid,
        ),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            Container(
              height: iconSize,
              width: iconSize,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                imagePath,
                scale: 4,
                fit: BoxFit.cover,
                color: themeController.isDarkMode.value ? AppColors.white : AppColors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: labelStyle ?? h5.copyWith(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
