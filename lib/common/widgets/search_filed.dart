import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import '../../app/controllers/theme_controller.dart';
import 'custom_textfield.dart';

class SearchFiled extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const SearchFiled({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return CustomTextField(
      preIcon: Image.asset(
        AppImages.search,
        scale: 4,
        color: themeController.isDarkMode.value
            ? AppColors.white
            : AppColors.black,
      ),
      onChange: onChanged,
      hintText: 'Search your sneakers',
      borderRadius: 30,
    );
  }
}
