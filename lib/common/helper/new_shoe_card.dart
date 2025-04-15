import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../common/app_color/app_colors.dart';
import '../../../../../../common/app_text_style/styles.dart';
import '../../../../../../common/size_box/custom_sizebox.dart';

class NewShoeCard extends StatelessWidget {
  final String title;
  final String price;
  final String productName;
  final String imagePath;
  final VoidCallback onTap;

  const NewShoeCard({
    super.key,
    required this.title,
    required this.price,
    required this.productName,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 135,
        width: Get.width * 0.8,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: AppColors.silver),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: Get.width * 0.25,
              child: Image.asset(
                imagePath,
                scale: 4,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              left: 16,
              top: 16,
              bottom: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: h6.copyWith(
                        color: AppColors.textColorOrange,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  sh5,
                  Text(
                    productName,
                    style: h3.copyWith(fontSize: 20,),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  sh5,
                  Text(
                    price,
                    style: h3,
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