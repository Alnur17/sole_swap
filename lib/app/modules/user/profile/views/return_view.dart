import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/common/helper/upload_widget.dart';
import 'package:sole_swap/common/widgets/custom_button.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';

class ReturnView extends GetView {
  const ReturnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        scrolledUnderElevation: 0,
        title: Text(
          'Return',
          style: titleStyle,
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upload images of the sneakers to verify their condition before return.',
              style: h3,
              textAlign: TextAlign.center,
            ),
            sh16,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.cameraTwo,
                  scale: 4,
                ),
                sw5,
                Text(
                  'Upload Sneaker Images',
                  style: h3,
                ),
              ],
            ),
            sh5,
            Align(
              alignment: Alignment.center,
              child: Text(
                'Please upload clear images from all angles',
                style: h5,
              ),
            ),
            sh16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UploadWidget(
                    height: 100,
                    width: 100,
                    onTap: () {},
                    imagePath: AppImages.add,
                    label: 'Front'),
                UploadWidget(
                    height: 100,
                    width: 100,
                    onTap: () {},
                    imagePath: AppImages.add,
                    label: 'Side'),
                UploadWidget(
                    height: 100,
                    width: 100,
                    onTap: () {},
                    imagePath: AppImages.add,
                    label: 'Sole'),
              ],
            ),
            sh16,
            CustomButton(
              text: 'Upload Images',
              onPressed: () {},
            ),
            sh16,
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue[50]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppImages.light,
                        scale: 4,
                      ),
                      sw8,
                      Text(
                        'Tips for clear photos:',
                        style: h4.copyWith(color: AppColors.blue),
                      ),
                    ],
                  ),
                  sh8,
                  Text(
                    '• Use clear lighting',
                    style: h6.copyWith(color: AppColors.blue),
                  ),
                  Text('• Capture all angles clearly',
                      style: h6.copyWith(color: AppColors.blue)),
                  Text('• Focus on any wear or damage',
                      style: h6.copyWith(color: AppColors.blue)),
                ],
              ),
            ),
            sh24,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Verification Result', style: h3),
                Row(
                  children: [
                    const Icon(Icons.check_circle,
                        color: Colors.green, size: 24),
                    sw8,
                    Text(
                      'Verified',
                      style: h3.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            sh8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Condition Rating',
                  style: h5,
                ),
                Text(
                  '7/10',
                  style: h5.copyWith(color: AppColors.orangeLight),
                ),
              ],
            ),
            sh8,
            LinearProgressIndicator(
              value: 0.7,
              backgroundColor: Colors.grey[300],
              color: AppColors.orangeLight,
              minHeight: 8,
            ),
            sh16,
            Row(
              children: [
                Image.asset(
                  AppImages.warning,
                  scale: 4,
                ),
                sw8,
                Text(
                  'Minor scuffs detected on the sole.',
                  style: h3.copyWith(
                      fontWeight: FontWeight.w500, color: AppColors.red),
                ),
              ],
            ),
            // sh16,
            // Text(
            //   'No Issues Detected',
            //   style: h3.copyWith(fontWeight: FontWeight.w500),
            // ),
            sh16,
            Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.silver,
              ),
              child: Image.asset(
                AppImages.productTrending,
                scale: 4,
                fit: BoxFit.cover,
              ),
            ),
            sh16,
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.red[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.warning,
                    scale: 4,
                  ),
                  sw8,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Penalty Applied:',
                          style: h3.copyWith(color: AppColors.red),
                        ),
                        Text(
                          'Due to findings with sneakers, extra \$2 penalty will be charged to your next order.',
                          style: h5.copyWith(color: AppColors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            sh16,
            Row(
              children: [
                Image.asset(
                  AppImages.clock,
                  scale: 4,
                ),
                sw8,
                Expanded(
                  child: Text(
                    'Please return within 24-hour time frame to avoid late penalties.',
                    style: h5.copyWith(color: AppColors.red),
                  ),
                ),
              ],
            ),
            sh24,
            CustomButton(
              text: 'Return Sneaker',
              onPressed: () {},
            ),
            sh12,
            CustomButton(
              text: 'Cancel Return',
              onPressed: () {},
              backgroundColor: AppColors.transparent,
              textColor: Colors.black,
              borderColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
