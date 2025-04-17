import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../../common/widgets/custom_textfield.dart';

class AddAddressView extends GetView {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.mainColor,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset(
              AppImages.arrowBack,
              scale: 4,
            ),
          ),
        ),
        title: Text('Add Address',style: titleStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sh20,
            Text('Name', style: h4),
            sh8,
            CustomTextField(
              hintText: 'Enter your name',
            ),
            sh12,
            Text('Number', style: h4),
            sh8,
            CustomTextField(),
            sh12,
            Text('Region / City / District', style: h4),
            sh8,
            CustomTextField(),
            sh12,
            Text('Address', style: h4),
            sh8,
            CustomTextField(),
            sh20,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Address Category',style: h4,),
                Spacer(),
                Image.asset(
                  AppImages.circleCheckbox,
                  scale: 4,
                ),
                sw8,
                Text('Home', style: h4),
                sw20,
                Image.asset(
                  AppImages.circleCheckbox,
                  scale: 4,
                ),
                sw8,
                Text('Office', style: h4),
              ],
            ),
            sh20,
            CustomButton(
              text: 'Save',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
