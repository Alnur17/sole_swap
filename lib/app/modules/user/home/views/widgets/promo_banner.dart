import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../common/app_color/app_colors.dart';
import '../../../../../../common/app_text_style/styles.dart';
import '../../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../../common/widgets/custom_button.dart';
import '../../controllers/home_controller.dart';

class PromoBanner extends StatelessWidget {
  final String title;
  final String discountPercentage;
  final String discountText;
  final String subText;
  final String buttonText;
  final String imagePath;
  final VoidCallback? onPressed;

  const PromoBanner({
    super.key,
    required this.title,
    required this.discountPercentage,
    required this.discountText,
    required this.subText,
    required this.buttonText,
    required this.imagePath,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: AppColors.promoBgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: -20,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title, // Dynamic title
                  style: h5,
                ),
                sh8,
                Row(
                  children: [
                    Text(
                      discountPercentage, // Dynamic percentage
                      style: h2,
                    ),
                    sw8,
                    Text(
                      discountText, // Dynamic discount text
                      style: h3,
                    ),
                  ],
                ),
                Text(
                  subText,
                  style: h5,
                ),
                const SizedBox(height: 16),
                CustomButton(
                  width: 100,
                  height: 40,
                  borderRadius: 30,
                  text: buttonText,
                  onPressed: onPressed ?? () {
                    // Default action if no callback is provided
                    Get.find<HomeController>().onRentNowPressed();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}