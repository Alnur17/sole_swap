import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/common/helper/upload_widget.dart';
import 'package:sole_swap/common/widgets/custom_button.dart';
import 'package:sole_swap/common/widgets/custom_textfield.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../controllers/theme_controller.dart';

class AddProductsView extends GetView {
  const AddProductsView({super.key});

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
        title: Text(
          'Add Products',
          style: titleStyle.copyWith(
            color: themeController.isDarkMode.value
                ? AppColors.white
                : AppColors.black,
          ),
        ),
        centerTitle: true,
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Upload Image',
                style: h5.copyWith(
                  color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
              sh12,
              UploadWidget(
                onTap: () {},
                imagePath: AppImages.add,
                label: 'Upload',
              ),
              sh16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UploadWidget(
                    height: 75,
                    width: Get.width * 0.28,
                    onTap: () {},
                    imagePath: AppImages.add,
                    label: 'Upload',
                  ),
                  UploadWidget(
                    height: 75,
                    width: Get.width * 0.28,
                    onTap: () {},
                    imagePath: AppImages.add,
                    label: 'Upload',
                  ),
                  UploadWidget(
                    height: 75,
                    width: Get.width * 0.28,
                    onTap: () {},
                    imagePath: AppImages.add,
                    label: 'Upload',
                  ),
                ],
              ),
              sh16,
              Text(
                'Product Name',
                style: h5.copyWith(
                  color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
              sh12,
              CustomTextField(
                hintText: 'Write a product details',
              ),
              sh16,
              Text(
                'Product Details',
                style: h5.copyWith(
                  color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
              sh12,
              CustomTextField(
                height: 100,
                hintText: 'Write a product details',
              ),
              sh16,
              Text(
                'Category Name',
                style: h5.copyWith(
                  color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
              sh12,
              CustomTextField(),
              sh16,
              Text(
                'Product Price',
                style: h5.copyWith(
                  color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
              sh12,
              CustomTextField(),
              sh16,
              Text(
                'Rental Duration',
                style: h5.copyWith(
                  color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
              sh12,
              CustomTextField(
                hintText: '1 day',
              ),
              sh16,
              Text(
                'Rent Price',
                style: h5.copyWith(
                  color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
              sh12,
              CustomTextField(),
              sh16,
              Text(
                'Important Note',
                style: h5.copyWith(
                  color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
              sh12,
              CustomTextField(
                height: 100,
                hintText: 'Write a important note',
              ),
              sh60,
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
        color: themeController.isDarkMode.value ? AppColors.black : AppColors.background,
        child: CustomButton(
          text: 'Save',
          onPressed: () {},
        ),
      ),
    );
  }
}
