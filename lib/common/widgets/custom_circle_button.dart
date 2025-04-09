import 'package:flutter/material.dart';

import '../app_color/app_colors.dart';
import '../app_text_style/styles.dart';
import '../size_box/custom_sizebox.dart';

class CustomCircleButton extends StatelessWidget {
  final String assetPath;
  final VoidCallback onTap;

  const CustomCircleButton({
    super.key,
    required this.assetPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.grey,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Image.asset(
          assetPath,
          scale: 4,
        ),
      ),
    );
  }
}
