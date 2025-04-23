import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/cart/views/payment_details_view.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../controllers/theme_controller.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {

  final ThemeController themeController = Get.find();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      return Get.offAll(() => PaymentDetailsView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeController.isDarkMode.value
          ? Colors.white12
          : AppColors.background,
      appBar: AppBar(
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.transparent
            : AppColors.mainColor,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Payment',
          style: appBarStyle.copyWith(
            color: themeController.isDarkMode.value
                ? AppColors.white
                : AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: themeController.isDarkMode.value ? AppColors.white : AppColors.transparent,width: 2.5),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(
                AppImages.success,
                scale: 4,
              ),
            ),
            sh20,
            Text(
              'Payment Successful',
              style: h3.copyWith(
                color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
