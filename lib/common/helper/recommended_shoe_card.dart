import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_images/app_images.dart';

import '../../app/controllers/theme_controller.dart';
import '../app_text_style/styles.dart';
import '../size_box/custom_sizebox.dart';

class RecommendedShoeCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;

  const RecommendedShoeCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: themeController.isDarkMode.value
            ? AppColors.black
            : AppColors.white,
        borderRadius: BorderRadius.circular(12),
        // border: Border.all(
        //   color: themeController.isDarkMode.value
        //       ? AppColors.white
        //       : AppColors.transparent,
        // ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            right: 8,
            child: Image.asset(
              AppImages.addBookmark,
              scale: 4,
              color: themeController.isDarkMode.value
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: themeController.isDarkMode.value
                    ? Colors.white
                    : Colors.black,
              ),
              child: Icon(
                Icons.add,
                color: themeController.isDarkMode.value
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    imagePath,
                    scale: 4,
                    fit: BoxFit.contain,
                  ),
                  // SizedBox(height: 8),
                  Text(
                    'Best Seller',
                    style: h6.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.textColorOrange,
                    ),
                  ),
                  sh5,
                  // Shoe Name
                  Text(
                    name,
                    style: themeController.isDarkMode.value
                        ? h3.copyWith(color: AppColors.white)
                        : h3,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  sh5,
                  // Price
                  Text(
                    price,
                    style: themeController.isDarkMode.value
                        ? h3.copyWith(color: AppColors.white, fontSize: 14)
                        : h3.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
