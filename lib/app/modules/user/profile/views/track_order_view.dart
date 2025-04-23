import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/common/helper/order_card.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/helper/timeline_step.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../controllers/theme_controller.dart';

class TrackOrderView extends GetView {
  const TrackOrderView({super.key});

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
          'Track Order',
          style: titleStyle.copyWith(
            color: themeController.isDarkMode.value
                ? AppColors.white
                : AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderCard(
              image: AppImages.productTrending,
              name: "Nike Air Force 1",
              size: "Size: 42 | 2 Pcs",
              price: "\$33",
            ),
            sh20,
            Text(
              'Order Details',
              style: h3.copyWith(
                color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
              ),
            ),
            sh8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Expected Delivery Date',
                  style: h6.copyWith(
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                Text(
                  '5 April 2025',
                  style: h6.copyWith(
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
              ],
            ),
            sh5,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tracking ID',
                  style: h6.copyWith(
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                Text(
                  'Dk216S6S444341',
                  style: h6.copyWith(
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
              ],
            ),
            sh20,
            Text(
              'Order Details',
              style: h3.copyWith(
                fontSize: 14,
                color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
              ),
            ),
            sh12,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TimelineStep(
                  title: 'Order Placed',
                  dateTime: '2 Apr 2025, 12:20 pm',
                  isCompleted: true,
                  image: AppImages.trackOrder,
                ),
                TimelineStep(
                  title: 'In Progress',
                  dateTime: '3 Apr 2025, 3:20 pm',
                  isCompleted: true,
                  image: AppImages.inProgress,
                ),
                TimelineStep(
                  title: 'Shipped',
                  dateTime: '4 Apr 2025, 06:20 pm',
                  isCompleted: true,
                  image: AppImages.shipped,
                ),
                TimelineStep(
                  title: 'Delivery',
                  dateTime: '5 Apr 2025',
                  isCompleted: false,
                  image: AppImages.delivered,
                  isLast: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
