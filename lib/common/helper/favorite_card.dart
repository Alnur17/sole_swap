import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';
import 'package:sole_swap/common/widgets/custom_button.dart';

import '../../app/controllers/theme_controller.dart';
import '../app_text_style/styles.dart';

class FavoriteCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;
  final VoidCallback onTap;

  const FavoriteCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: themeController.isDarkMode.value
              ? AppColors.black
              : AppColors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: Get.width,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: themeController.isDarkMode.value
                    ? Colors.white12
                    : AppColors.promoBgColor,
              ),
              child: Image.asset(
                imagePath,
                scale: 4,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Text(
                    name,
                    style: h4.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        price,
                        style: h2.copyWith(
                          color: themeController.isDarkMode.value
                              ? AppColors.white
                              : AppColors.black,
                        ),
                      ),
                      sw5,
                      Expanded(
                        child: CustomButton(
                          height: 30,
                          text: 'Rent Now',
                          onPressed: () {},
                          textStyle: h6.copyWith(color: AppColors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
