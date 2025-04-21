import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_images/app_images.dart';

import '../app_text_style/styles.dart';

class VendorTrendingCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;
  final VoidCallback onTap;
  final VoidCallback onEditTap;

  const VendorTrendingCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
    required this.onTap,
    required this.onEditTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
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
            Stack(
              children: [
                Container(
                  height: 120,
                  width: Get.width,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.promoBgColor),
                  child: Image.asset(
                    imagePath,
                    scale: 4,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: GestureDetector(
                    onTap: onEditTap,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.black),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        AppImages.editBig,
                        scale: 4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      name,
                      style: h4,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    '\$$price',
                    style: h3.copyWith(fontSize: 18),
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
