import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/const_text/const_text.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../controllers/theme_controller.dart';

class VendorTermsOfServicesView extends GetView {
  const VendorTermsOfServicesView({super.key});
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Scaffold(
      backgroundColor: themeController.isDarkMode.value
          ? Colors.white12
          : AppColors.background,
      appBar: AppBar(
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.transparent
            : AppColors.mainColor,
        scrolledUnderElevation: 0,
        title: Text(
          'Terms Of Services',
          style: titleStyle.copyWith(
            color: themeController.isDarkMode.value
                ? AppColors.white
                : AppColors.black,
          ),
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
              //   'Terms & Conditions',
              //   style: h2,
              // ),
              // sh24,
              Text(
                termsIntroduction,
                style: h4.copyWith(
                  fontSize: 14, color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
                ),
              ),
              sh24,
              Text(
                termsIntroduction,
                style: h4.copyWith(
                  fontSize: 14, color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
                ),
              ),
              sh24,
              Text(
                termsIntroduction,
                style: h4.copyWith(
                  fontSize: 14, color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
                ),
              ),
              sh24,
              Text(
                termsIntroduction,
                style: h4.copyWith(
                  fontSize: 14, color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
                ),
              ),
              sh24,
              Text(
                termsIntroduction,
                style: h4.copyWith(
                  fontSize: 14, color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
