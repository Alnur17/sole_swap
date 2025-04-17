import 'package:flutter/material.dart';
import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_text_style/styles.dart';

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
              color: Colors.black,
              size: 24,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: h5,
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
