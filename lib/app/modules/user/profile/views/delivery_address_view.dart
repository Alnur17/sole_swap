import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/common/app_text_style/styles.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/helper/address_card.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../controllers/theme_controller.dart';
import 'add_address_view.dart';

class DeliveryAddressView extends GetView {
  const DeliveryAddressView({super.key});

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
            : AppColors.mainColor,scrolledUnderElevation: 0,
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
          'Address',
          style: appBarStyle.copyWith(
            color: themeController.isDarkMode.value
                ? AppColors.white
                : AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              sh20,
              CustomButton(
                text: 'Add address',
                onPressed: () {
                  Get.to(() => AddAddressView());
                },
                imageAssetPath: AppImages.add,
                backgroundColor: AppColors.transparent,
                textColor: AppColors.black100,
                borderColor: AppColors.silver,
                borderRadius: 12,
                height: 66,
              ),
              sh12,
              AddressCard(
                title: 'Home',
                address: '123 Main Street, Berlin, Germany, 10115',
                isDefault: true,
                onEdit: () {
                  log('Edit tapped');
                },
                onLocation: () {
                  log('Location tapped');
                },
              ),
              sh12,
              AddressCard(
                title: 'Office',
                address: '456 Business Avenue, Hamburg, Germany, 20354',
                isDefault: false,
                onEdit: () {
                  log('Edit tapped');
                },
                onLocation: () {
                  log('Location tapped');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
