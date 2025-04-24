import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/helper/upload_widget.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../../common/widgets/custom_textfield.dart';
import '../../../../controllers/theme_controller.dart';

class VendorEditProfileView extends GetView {
  const VendorEditProfileView({super.key});

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
          'Edit Profile',
          style: appBarStyle.copyWith(
            color: themeController.isDarkMode.value
                ? AppColors.white
                : AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CustomTextField(
                hintText: 'Shop name',
              ),
              sh8,
              CustomTextField(
                height: 100,
                hintText: 'Shop Description',
              ),
              sh8,
              CustomTextField(
                hintText: 'saiidromea@gmail.com',
              ),
              sh8,
              CustomTextField(
                hintText: 'Enter your location',
              ),
              sh8,
              CustomTextField(
                hintText: 'Enter your number',
              ),
              sh8,
              UploadWidget(
                onTap: () {},
                imagePath: AppImages.add,
                label: 'Upload Cover Photo',
              ),
              sh8,
              UploadWidget(
                onTap: () {},
                imagePath: AppImages.add,
                label: 'Upload Tax Document',
              ),
              sh60,
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: themeController.isDarkMode.value
            ? AppColors.black
            : AppColors.background,
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: CustomButton(
          text: 'Update',
          onPressed: () {},
        ),
      ),
    );
  }
}
