import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sole_swap/app/modules/authentication/forgot_password/views/new_password_view.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../controllers/theme_controller.dart';

class VerifyCodeForgotView extends GetView {
  const VerifyCodeForgotView({super.key});

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
                AppImages.verifyEmailImage,
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
                      'Verification Code',
                      style: h1.copyWith(color: AppColors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    sh5,
                    Text(
                      'Please enter the code we just sent to your email',
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
                    PinCodeTextField(
                      length: 4,
                      obscureText: false,
                      keyboardType: TextInputType.number,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(8),
                        fieldHeight: Get.height * 0.07,
                        fieldWidth: Get.width * 0.14,
                        activeColor: AppColors.white,
                        activeFillColor: AppColors.whiteDark,
                        inactiveColor: AppColors.grey,
                        inactiveFillColor: AppColors.white,
                        selectedColor: AppColors.mainColor,
                        selectedFillColor: AppColors.greyLight,
                        fieldOuterPadding: EdgeInsets.symmetric(horizontal: 2),
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      backgroundColor: AppColors.transparent,
                      cursorColor: AppColors.blue,
                      enablePinAutofill: true,
                      enableActiveFill: true,
                      onCompleted: (v) {},
                      onChanged: (value) {},
                      beforeTextPaste: (text) {
                        log("Allowing to paste $text");
                        return true;
                      },
                      appContext: context,
                    ),
                    sh16,
                    Text(
                      'Didn\'t receive OTP?',
                      style: h4.copyWith(
                        color: themeController.isDarkMode.value
                            ? AppColors.white
                            : AppColors.black,
                      ),
                    ),
                    sh5,
                    Text(
                      'Resend Code',
                      style: h3.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        decorationColor: themeController.isDarkMode.value
                            ? AppColors.white
                            : AppColors.black,
                        color: themeController.isDarkMode.value
                            ? AppColors.white
                            : AppColors.black,
                      ),
                    ),
                    sh16,
                    CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        Get.to(() => NewPasswordView());
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
