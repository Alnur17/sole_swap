import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sole_swap/app/modules/authentication/phone_sign_up/views/verify_code_using_number_view.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import 'package:sole_swap/common/widgets/custom_button.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../controllers/phone_sign_up_controller.dart';

class PhoneSignUpView extends GetView<PhoneSignUpController> {
  const PhoneSignUpView({super.key});

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
                AppImages.enterPhoneNumber,
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
                      'Enter Phone Number',
                      style: h1.copyWith(color: AppColors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    sh5,
                    Text(
                      'We\'ll need your phone number to send an OTP for verification.',
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
              child: Column(
                children: [
                  IntlPhoneField(
                    decoration: InputDecoration(
                      hintText: 'Enter your phone number',
                      hintStyle: h4.copyWith(
                        color: AppColors.grey,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                    ),
                    initialCountryCode: 'BD',
                    onChanged: (phone) {
                      if (kDebugMode) {
                        print(phone.completeNumber);
                      }
                    },
                  ),
                  sh16,
                  CustomButton(
                    text: 'Continue',
                    onPressed: () {
                      Get.to(() => VerifyCodeUsingNumberView());
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
