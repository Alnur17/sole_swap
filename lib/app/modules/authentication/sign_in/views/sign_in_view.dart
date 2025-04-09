import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/dashboard/views/dashboard_view.dart';
import 'package:sole_swap/common/widgets/custom_textfield.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../../common/widgets/custom_circle_button.dart';
import '../../../../../common/widgets/google_button.dart';
import '../../forgot_password/views/forgot_password_view.dart';
import '../../sign_up/views/sign_up_view.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
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
                AppImages.signInImage,
                scale: 4,
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
                      'Sign in to your Account',
                      style: h1.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    sh5,
                    Text(
                      'Sign in by entering the information below',
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
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTextField(
                      labelText: 'Phone / Email',
                      hintText: 'Enter your email or phone number',
                    ),
                    sh12,
                    CustomTextField(
                      sufIcon: Image.asset(
                        AppImages.eyeClose,
                        scale: 4,
                      ),
                      labelText: 'Password',
                      hintText: '*********',
                    ),
                    sh12,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                //Get.to(() => const ForgotPasswordView());
                              },
                              child: Image.asset(
                                AppImages.checkbox,
                                scale: 4,
                              ),
                            ),
                            sw16,
                            Text(
                              'Remember Me',
                              style: h4,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const ForgotPasswordView());
                          },
                          child: Text(
                            'Forgot password?',
                            style: h4.copyWith(
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    sh16,
                    CustomButton(
                      text: 'Sign In',
                      onPressed: () {
                        Get.to(() => DashboardView());
                      },
                    ),
                    sh16,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(child: Divider()),
                        sw10,
                        Text(
                          'Or sign in with',
                          style: h4,
                        ),
                        sw10,
                        const Expanded(child: Divider()),
                      ],
                    ),
                    sh16,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCircleButton(
                          assetPath: AppImages.google,
                          onTap: () {},
                        ),
                        sw16,
                        CustomCircleButton(
                          assetPath: AppImages.facebook,
                          onTap: () {},
                        ),
                        sw16,
                        CustomCircleButton(
                          assetPath: AppImages.apple,
                          onTap: () {},
                        ),
                      ],
                    ),
                    sh10,
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const SignUpView());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account? ',
                            style: h3,
                          ),
                          Text(
                            'SignUp',
                            style: h3.copyWith(
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                            ),
                          ),
                        ],
                      ),
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
