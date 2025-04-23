import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/common/helper/vendor_order_card.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../controllers/theme_controller.dart';

class VendorOrderDetailsView extends GetView {
  const VendorOrderDetailsView({super.key});

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
          'Order Details',
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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return VendorOrderCard(
                    image: AppImages.productTrending,
                    name: 'Nike Air Force 1',
                    size: '42 | 2',
                  );
                },
              ),
            ),
            Row(
              children: [
                Text(
                  'Order Id: ',
                  style: h3.copyWith(fontSize: 14, color: AppColors.grey),
                ),
                Text(
                  'HJ472839',
                  style: h3.copyWith(fontSize: 14,color: themeController.isDarkMode.value
                  ? AppColors.white
                    : AppColors.black,),
                ),
              ],
            ),
            sh5,
            Row(
              children: [
                Text(
                  'Customer name: ',
                  style: h3.copyWith(fontSize: 14, color: AppColors.grey),
                ),
                Text(
                  'Rebecca Fox',
                  style: h3.copyWith(fontSize: 14,color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,),
                ),
              ],
            ),
            sh5,
            Row(
              children: [
                Text(
                  'Delivery Address: ',
                  style: h3.copyWith(fontSize: 14, color: AppColors.grey),
                ),
                Expanded(
                  child: Text(
                    '2345 Market St, San Francisco,CA ',
                    style: h3.copyWith(fontSize: 14,color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,),
                  ),
                ),
              ],
            ),
            sh5,
            Row(
              children: [
                Text(
                  'Date: ',
                  style: h3.copyWith(fontSize: 14, color: AppColors.grey),
                ),
                Text(
                  '07/04/25 - 09/04/25 ',
                  style: h3.copyWith(fontSize: 14,color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,),
                ),
              ],
            ),
            sh5,
            Row(
              children: [
                Text(
                  'Payment Method: ',
                  style: h3.copyWith(fontSize: 14, color: AppColors.grey),
                ),
                Text(
                  'Apple Pay',
                  style: h3.copyWith(fontSize: 14,color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,),
                ),
              ],
            ),
            sh20,
            Text(
              'Price Details',
              style: h3.copyWith(fontSize: 14,color: themeController.isDarkMode.value
                  ? AppColors.white
                  : AppColors.black,),
            ),
            sh8,
            Row(
              children: [
                Text(
                  'Price',
                  style: h3.copyWith(fontSize: 14, color: AppColors.grey),
                ),
                Spacer(),
                Text(
                  '\$36',
                  style: h3.copyWith(fontSize: 14,color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,),
                ),
              ],
            ),
            sh5,
            Row(
              children: [
                Text(
                  'Delivery Fee',
                  style: h3.copyWith(fontSize: 14, color: AppColors.grey),
                ),
                Spacer(),
                Text(
                  '\$4',
                  style: h3.copyWith(fontSize: 14,color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  'Total Payment',
                  style: h3.copyWith(fontSize: 14,color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,),
                ),
                Spacer(),
                Text(
                  '\$40',
                  style: h3.copyWith(fontSize: 14,color: themeController.isDarkMode.value
                      ? AppColors.white
                      : AppColors.black,),
                ),
              ],
            ),
            sh5
          ],
        ),
      ),
    );
  }
}
