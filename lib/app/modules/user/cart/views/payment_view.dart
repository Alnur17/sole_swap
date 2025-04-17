import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/cart/views/payment_details_view.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {

  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      return Get.off(() => PaymentDetailsView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.background,
        automaticallyImplyLeading: false,
        title: Text(
          'Payment',
          style: appBarStyle,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.success,
              scale: 4,
            ),
            sh8,
            Text(
              'Payment Successful',
              style: h3,
            )
          ],
        ),
      ),
    );
  }
}
