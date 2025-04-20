import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/const_text/const_text.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';

class VendorAboutUsView extends GetView {
  const VendorAboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        scrolledUnderElevation: 0,
        title: Text(
          'About Us',
          style: titleStyle,
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CustomCircularContainer(
            imagePath: AppImages.arrowBack,
            onTap: () {
              Get.back();
            },
            padding: 4,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //   'About Us',
              //   style: h2,
              // ),
              // sh24,
              Text(
                acceptance0fTerms,
                style: h4.copyWith(
                  fontSize: 14,
                ),
              ),
              sh24,
              Text(
                acceptance0fTerms,
                style: h4.copyWith(
                  fontSize: 14,
                ),
              ),
              sh24,
              Text(
                acceptance0fTerms,
                style: h4.copyWith(
                  fontSize: 14,
                ),
              ),
              sh24,
              Text(
                acceptance0fTerms,
                style: h4.copyWith(
                  fontSize: 14,
                ),
              ),
              sh24,
              Text(
                acceptance0fTerms,
                style: h4.copyWith(
                  fontSize: 14,
                ),
              ),
              sh24,
              Text(
                acceptance0fTerms,
                style: h4.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}