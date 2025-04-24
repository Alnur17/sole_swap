import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/authentication/sign_in/views/sign_in_view.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../../common/widgets/custom_textfield.dart';
import '../../../../controllers/theme_controller.dart';

class NewPasswordView extends GetView {
  const NewPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Scaffold(
      backgroundColor: AppColors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                AppImages.newPassImage,
                scale: 4,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: AppColors.black.withOpacity(0.5)),
                    child: Image.asset(
                      AppImages.back,
                      scale: 4,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Password',
                      style: h1.copyWith(color: AppColors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    sh5,
                    Text(
                      'Your new password must be different from old one',
                      style: h4.copyWith(color: AppColors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: Get.height,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: themeController.isDarkMode.value
                    ? Colors.white12
                    : AppColors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTextField(
                      labelText: 'New Password',
                      hintText: '***************',
                      sufIcon: Image.asset(AppImages.eyeClose,scale: 4,),
                    ),
                    sh12,
                    CustomTextField(
                      labelText: 'Confirm Password',
                      hintText: '***************',
                      sufIcon: Image.asset(AppImages.eyeClose,scale: 4,),
                    ),
                    sh16,
                    CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        Get.to(() => SignInView());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
