import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import 'package:sole_swap/common/app_text_style/styles.dart';

import '../../app/controllers/theme_controller.dart';
import '../size_box/custom_sizebox.dart';

class CartItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String size;
  final String price;
  final int quantity;
  final VoidCallback increment;
  final VoidCallback decrement;
  final VoidCallback onDeleteTap;

  const CartItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.size,
    required this.price,
    required this.quantity,
    required this.increment,
    required this.decrement,
    required this.onDeleteTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: themeController.isDarkMode.value
            ? AppColors.black
            : AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.whiteDark,
                borderRadius: BorderRadius.circular(8)),
            child: Image.asset(
              imagePath,
              width: 130,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          // Shoe Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: h3.copyWith(
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                sh5,
                Text('Size: $size', style: h6.copyWith(color: Colors.grey)),
                sh8,
                // Quantity Controls
                Row(
                  children: [
                    GestureDetector(
                      onTap: decrement,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: themeController.isDarkMode.value
                                ? AppColors.transparent
                                : AppColors.black,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          AppImages.minus,
                          scale: 4,
                          height: 32,
                          width: 32,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        '$quantity',
                        style: h5.copyWith(
                          color: themeController.isDarkMode.value
                              ? AppColors.white
                              : AppColors.black,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: increment,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: themeController.isDarkMode.value
                                ? AppColors.white
                                : AppColors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          AppImages.plus,
                          scale: 4,
                        ),
                      ),
                    ),
                  ],
                ),
                sh8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$$price',
                      style: h3.copyWith(
                        color: themeController.isDarkMode.value
                            ? AppColors.white
                            : AppColors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        onTap: onDeleteTap,
                        child: Image.asset(
                          AppImages.delete,
                          scale: 4,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
