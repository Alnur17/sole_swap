import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../../common/widgets/custom_textfield.dart';

class VendorChangePassword extends GetView {
  const VendorChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.background,
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
        title: Text(
          'Change Password',
          style: appBarStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            sh30,
            CustomTextField(
              hintText: 'Current Password',
              sufIcon: Image.asset(
                AppImages.eyeClose,
                scale: 4,
              ),
            ),
            sh16,
            CustomTextField(
              hintText: 'New Password',
              sufIcon: Image.asset(
                AppImages.eyeClose,
                scale: 4,
              ),
            ),
            sh16,
            CustomTextField(
              hintText: 'Confirm New Password',
              sufIcon: Image.asset(
                AppImages.eyeClose,
                scale: 4,
              ),
            ),
            sh30,
            CustomButton(text: 'Confirm', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
