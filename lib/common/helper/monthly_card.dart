import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';

import '../../app/controllers/theme_controller.dart';
import '../app_text_style/styles.dart';
import '../widgets/custom_dropdown.dart';

class MonthlyCard extends StatelessWidget {
  final String title;
  final String value;
  final String percentageChange;
  final String selectedMonth;
  final ValueChanged<String?> onMonthChanged;

  const MonthlyCard({
    super.key,
    required this.title,
    required this.value,
    required this.percentageChange,
    required this.selectedMonth,
    required this.onMonthChanged,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Card(
      color:
          themeController.isDarkMode.value ? AppColors.black : AppColors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: h6.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                ),
                CustomDropdown<String>(
                  value: selectedMonth,
                  items:
                      <String>['Jan', 'Feb', 'Mar', 'Apr'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: h6.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.white),
                      ),
                    );
                  }).toList(),
                  onChanged: onMonthChanged,
                  width: 70,
                  height: 36,
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              value,
              style: h2.copyWith(
                color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.green[50],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.graph,
                    scale: 4,
                  ),
                  SizedBox(width: 4),
                  Text(
                    percentageChange,
                    style: h6.copyWith(color: AppColors.green),
                  ),
                ],
              ),
            ),
            sh8,
            Text(
              'From the last month',
              style: h6.copyWith(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
