import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../app/controllers/theme_controller.dart';
import '../size_box/custom_sizebox.dart';

class ContactInfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String trailing;
  final VoidCallback? onTap;

  const ContactInfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.background,
            ),
            child: Icon(
              icon,
              color: AppColors.black,
              size: 24,
            ),
          ),
          sw16,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: h5.copyWith(
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: h6.copyWith(color: AppColors.grey),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Image.asset(
              trailing,
              scale: 4,
            ),
          ),
        ],
      ),
    );
  }
}
