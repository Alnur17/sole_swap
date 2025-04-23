import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_text_style/styles.dart';

import '../../app/controllers/theme_controller.dart';
import '../app_color/app_colors.dart';

class TimelineStep extends StatelessWidget {
  final String title;
  final String dateTime;
  final bool isCompleted;
  final String image;
  final bool isLast;

  const TimelineStep({
    super.key,
    required this.title,
    required this.dateTime,
    required this.isCompleted,
    required this.image,
    this.isLast = true,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    isCompleted ? Colors.green : Colors.grey.withOpacity(0.3),
              ),
              child: Icon(
                isCompleted ? Icons.check : Icons.circle,
                color: Colors.white,
                size: 16,
              ),
            ),
            // Vertical line to connect steps, hidden for the last step
            if (isLast)
              Container(
                width: 2,
                height: 60, // Adjust height based on your design
                color:
                    isCompleted ? Colors.green : Colors.grey.withOpacity(0.3),
              ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: h3.copyWith(
                  color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                dateTime,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          image,
          scale: 4,
        ),
      ],
    );
  }
}
