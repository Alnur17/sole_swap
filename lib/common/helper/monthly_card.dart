import 'package:flutter/material.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_images/app_images.dart';

import '../app_text_style/styles.dart';
import '../widgets/custom_dropdown.dart';

class MonthlyCard extends StatelessWidget {
  final String title;
  final String value;
  final String percentageChange;
  final String selectedMonth;

  const MonthlyCard({
    super.key,
    required this.title,
    required this.value,
    required this.percentageChange,
    required this.selectedMonth,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
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
                    style: h6,
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
                  onChanged: (newValue) {
                    // Handle dropdown value change here if needed
                    print('Selected month: $newValue');
                  },
                  width: 70,
                  // Adjusted width for better fit
                  height: 36, // Adjusted height for better fit
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
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
            SizedBox(width: 4),
            Text(
              'From the last month',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
