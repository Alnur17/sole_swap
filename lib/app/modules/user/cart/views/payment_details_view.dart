import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/dashboard/views/dashboard_view.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../controllers/theme_controller.dart';

class PaymentDetailsView extends GetView {
  const PaymentDetailsView({super.key});

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
        automaticallyImplyLeading: false,
        title: Text(
          'Payment Details',
          style: appBarStyle.copyWith(
            color: themeController.isDarkMode.value
                ? AppColors.white
                : AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                color: themeController.isDarkMode.value
                    ? AppColors.black
                    : AppColors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  sh40,
                  Text(
                    'Payment Total',
                    style: h5.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                  ),
                  sh8,
                  Text(
                    '\$35.00',
                    style: h2.copyWith(
                      fontWeight: FontWeight.w500,
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  sh20,
                  _buildRow(
                    'Date',
                    '31 Dec 2023',
                    themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                  _buildRow(
                    'Transaction ID',
                    '#123456789',
                    themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                  _buildRow(
                    'Account',
                    'Neeraj',
                    themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                  ),
                  //_buildRow('Total Payment', '\$89.99'),
                  _buildRow(
                    'Total',
                    '\$35.00',
                    themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: AppColors.white,
              child: Image.asset(
                AppImages.success,
                scale: 4,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomButton(
          text: 'Back to Homepage',
          onPressed: () {
            Get.to(() => DashboardView());
          },
        ),
      ),
    );
  }

  Widget _buildRow(String label, String value, Color themeColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: h5.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.grey,
            ),
          ),
          Text(
            value,
            style: h5.copyWith(
              fontWeight: FontWeight.w600,
              color: themeColor,
            ),
          ),
        ],
      ),
    );
  }
}
