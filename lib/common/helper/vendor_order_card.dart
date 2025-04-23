import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_text_style/styles.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';

import '../../app/controllers/theme_controller.dart';

class VendorOrderCard extends StatelessWidget {
  final String image;
  final String name;
  final String size;
  final String? date;

  const VendorOrderCard({
    super.key,
    required this.image,
    required this.name,
    required this.size,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Card(
      color:
          themeController.isDarkMode.value ? AppColors.black : AppColors.white,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.whiteDark,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                image,
                width: 120,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Summary',
                    style: h3.copyWith(
                      fontSize: 18,
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    name,
                    style: h3.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(size, style: h6.copyWith(color: AppColors.grey),),
                  if (date != null) ...[
                    sh5,
                    Text(date!, style: h6.copyWith(color: AppColors.grey),),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
