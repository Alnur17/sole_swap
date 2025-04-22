import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/controllers/theme_controller.dart';
import '../app_color/app_colors.dart';
import '../app_images/app_images.dart';
import '../app_text_style/styles.dart';
import '../size_box/custom_sizebox.dart';

class VendorCard extends StatelessWidget {
  final String name;
  final String description;
  final String location;
  final bool isOpen;
  final String imageUrl;
  final VoidCallback onTap;

  const VendorCard({
    super.key,
    required this.name,
    required this.description,
    required this.location,
    required this.isOpen,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: themeController.isDarkMode.value
            ? AppColors.black
            : AppColors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.asset(
                imageUrl,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: h3.copyWith(
                          color: themeController.isDarkMode.value
                              ? AppColors.white
                              : AppColors.black,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: isOpen
                              ? Colors.green.withOpacity(0.1)
                              : Colors.red.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          isOpen ? 'Open' : 'Closed',
                          style: TextStyle(
                            color: isOpen ? Colors.green : Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: h5.copyWith(color: AppColors.grey),
                  ),
                  sh8,
                  Row(
                    children: [
                      Image.asset(
                        AppImages.location,
                        scale: 4,
                      ),
                      sw5,
                      Text(
                        location,
                        style: h6.copyWith(
                          color: themeController.isDarkMode.value
                              ? AppColors.white
                              : AppColors.black,
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
