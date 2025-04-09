import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final List<String> highlightedText;

  //final String backgroundImage;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.highlightedText,
    //required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            bottom: Get.height * 0.4,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
              width: Get.width,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Spacer(),
                // Image.asset(image,fit: BoxFit.cover,width: Get.width,),
                Spacer(),
                RichText(
                  text: TextSpan(
                    style: h1,
                    children: _buildHighlightedText(),
                  ),
                ),
                sh16,
                Text(
                  subtitle,
                  style: h4,
                ),
                sh100,
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<TextSpan> _buildHighlightedText() {
    List<TextSpan> spans = [];
    final words = title.split(' ');

    for (var word in words) {
      if (highlightedText.contains(word)) {
        spans.add(TextSpan(
          text: '$word ',
          style: TextStyle(color: AppColors.orangeLight),
        ));
      } else {
        spans.add(TextSpan(
          text: '$word ',
          style: TextStyle(color: AppColors.black),
        ));
      }
    }

    return spans;
  }
}
