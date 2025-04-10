import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_images/app_images.dart';

import '../app_text_style/styles.dart';

class TrendingShoeCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;

  const TrendingShoeCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                width: Get.width,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.promoBgColor
                ),
                child: Image.asset(
                  imagePath,
                  scale: 4,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Image.asset(
                  AppImages.addBookmark,
                  scale: 4,
                ),
              ),

              Positioned(
                top: 16,
                left: 16,
                child: Row(
                  children: [
                    Icon(Icons.star,color: AppColors.textColorOrange,),
                    Text('4.5'),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    name,
                    style: h4,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  price,
                  style: h3.copyWith(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
