import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/authentication/sign_up/views/verify_code_view.dart';
import 'package:sole_swap/app/modules/authentication/sign_up/views/widgets/signup_body_widget.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
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
                AppImages.signUpImage,
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
                      'Create Account',
                      style: h1.copyWith(color: AppColors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    sh5,
                    Text(
                      'Please fill the inputs below to continue',
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
              padding: EdgeInsets.only(top: 20, left: 20,right: 20,bottom: 12),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Expanded(child: SignupBodyWidget()),
                  CustomButton(
                    text: 'Sign Up',
                    onPressed: () {
                      Get.to(()=> VerifyCodeView());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
