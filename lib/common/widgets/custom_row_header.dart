import 'package:flutter/material.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';

import '../app_text_style/styles.dart';

class CustomRowHeader extends StatelessWidget {
  const CustomRowHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: h3,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            subtitle,
            style: h5.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.textColorOrange,
              decoration: TextDecoration.underline,
              decorationThickness: 2,
              decorationColor: AppColors.textColorOrange,
            ),
          ),
        ),
      ],
    );
  }
}

//style: h5.copyWith(color: AppColors.textColorBlue,fontWeight: FontWeight.bold),
