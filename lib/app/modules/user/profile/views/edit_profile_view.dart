import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/helper/upload_widget.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../../common/widgets/custom_textfield.dart';
import '../../../../controllers/theme_controller.dart';

class EditProfileView extends GetView {
  const EditProfileView({super.key});

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
          'Edit Profile',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sh20,
                  Text(
                    'Full name',
                    style: h3.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  sh8,
                  Row(
                    children: [
                      Expanded(
                          child: CustomTextField(
                        hintText: 'First name',
                        hintTextStyle: h4.copyWith(
                          color: AppColors.grey,
                          fontSize: 14,
                        ),
                      )),
                      sw16,
                      Expanded(
                          child: CustomTextField(
                        hintText: 'Last name',
                        hintTextStyle: h4.copyWith(
                          color: AppColors.grey,
                          fontSize: 14,
                        ),
                      )),
                    ],
                  ),
                  sh20,
                  Text(
                    'Email address',
                    style: h3.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  sh8,
                  CustomTextField(
                    hintText: 'abc@gmail.com',
                    hintTextStyle: h4.copyWith(
                      color: AppColors.grey,
                      fontSize: 14,
                    ),
                  ),
                  sh20,
                  Text(
                    'Location',
                    style: h3.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  sh8,
                  CustomTextField(
                    preIcon: Icon(Icons.location_on_outlined),
                    hintText: 'London park, UK',
                    hintTextStyle: h4.copyWith(
                      color: AppColors.grey,
                      fontSize: 14,
                    ),
                  ),
                  sh20,
                  Text(
                    'Contact',
                    style: h3.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  sh8,
                  IntlPhoneField(
                    decoration: InputDecoration(
                      hintText: '1629958550',
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
                  Text(
                    'Gender',
                    style: h3.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  sh8,
                  CustomTextField(
                    hintText: 'Male',
                    hintTextStyle: h4.copyWith(
                      color: AppColors.grey,
                      fontSize: 14,
                    ),
                  ),
                  sh20,
                  Text(
                    'Age',
                    style: h3.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  sh8,
                  CustomTextField(
                    hintText: '24',
                    hintTextStyle: h4.copyWith(
                      color: AppColors.grey,
                      fontSize: 14,
                    ),
                  ),
                  sh20,
                  Text('Upload NID/Driving License/Passport', style: h3.copyWith(
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),),
                  sh8,
                  UploadWidget(
                    onTap: () {},
                    imagePath: AppImages.add,
                    label: 'Upload',
                  ),
                ],
              ),
              sh20,
              CustomButton(
                text: 'Update',
                onPressed: () {},
              ),
              sh20,
            ],
          ),
        ),
      ),
    );
  }
}
