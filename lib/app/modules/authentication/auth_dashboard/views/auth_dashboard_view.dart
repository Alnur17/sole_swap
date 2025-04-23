import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/authentication/phone_sign_up/views/phone_sign_up_view.dart';
import 'package:sole_swap/app/modules/authentication/sign_in/views/sign_in_view.dart';
import 'package:sole_swap/app/modules/authentication/sign_up/views/sign_up_view.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_text_style/styles.dart';

import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../controllers/auth_dashboard_controller.dart';

class AuthDashboardView extends GetView<AuthDashboardController> {
  const AuthDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      // appBar: AppBar(
      //   backgroundColor: AppColors.mainColor,
      //   scrolledUnderElevation: 0,
      //   toolbarHeight: 0,
      // ),
      body: Stack(
        children: [
          Image.asset(
            AppImages.authBack,
            fit: BoxFit.cover,
            width: Get.width,
          ),
          // Container(
          //   color: AppColors.black.withOpacity(0.15),
          // ),
          Positioned(
            left: 0,
            right: 0,
            child: Image.asset(
              AppImages.authLogo,
              scale: 4,
            ),
          ),
          Positioned(
            bottom: 110,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to Sole Swap",
                      style: h2.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    sh5,
                    Text(
                      "Find, rent, or list your favorite high-end sneakers — all in one seamless experience.",
                      style: h4,
                    ),
                  ],
                ),
                sh16,
                CustomButton(
                  text: 'Use phone number',
                  onPressed: () {
                    Get.to(() => PhoneSignUpView());
                  },
                ),
                sh20,
                GestureDetector(
                  onTap: () {
                    Get.to(() => SignUpView());
                  },
                  child: Container(
                    height: 48,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.silver,
                      ),
                      color: AppColors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        'Continue with email',
                        style: h3.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                // CustomButton(
                //   text: 'Continue with email',
                //   onPressed: () {
                //     Get.to(() => SignUpView());
                //   },
                //   backgroundColor: AppColors.transparent,
                //   textStyle: h3.copyWith(
                //     color: AppColors.black,
                //     fontWeight: FontWeight.w700,
                //   ),
                //   borderColor: AppColors.black,
                // ),
                sh12,
                GestureDetector(
                  onTap: () {
                    Get.to(() => SignInView());
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already Have an account? ',
                          style: h3,
                        ),
                        TextSpan(
                          //recognizer: ,
                          text: 'Sign In',
                          style: h3.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
