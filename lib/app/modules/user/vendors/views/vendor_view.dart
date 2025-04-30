import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/vendors/views/vendor_details_view.dart';
import 'package:sole_swap/common/widgets/search_filed.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/helper/vendor_card.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../controllers/theme_controller.dart';
import '../controllers/vendor_controller.dart';

class VendorView extends GetView<VendorController> {
  const VendorView({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Scaffold(
      backgroundColor: themeController.isDarkMode.value
          ? Colors.black12
          : AppColors.background,
      appBar: AppBar(
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.transparent
            : AppColors.background,
        scrolledUnderElevation: 0,
        title: Text(
          'Vendor',
          style: themeController.isDarkMode.value
              ? titleStyle.copyWith(
                  color: AppColors.white,
                )
              : titleStyle,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 16),
        //   child: CustomCircularContainer(
        //     imagePath: AppImages.arrowBack,
        //     onTap: () {
        //       Get.back();
        //     },
        //     padding: 4,
        //   ),
        // ),
        actions: [
          CustomCircularContainer(
            imagePath: AppImages.shop,
            onTap: () {},
          ),
          sw20,
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchFiled(
              onChanged: (value) {},
            ),
            sh16,
            Text(
              'Find Nearby Vendors',
              style: h3.copyWith(
                fontSize: 18,
                color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
              ),
            ),
            sh5,

            Text(
              'Discover sneaker rental shops near you',
              style: h5.copyWith(color: AppColors.grey),
            ),
            sh12,
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return VendorCard(
                    name: 'SneakerHub Elite',
                    description: 'Premium sneaker rentals for all occasions',
                    location: 'Downtown Fresno • 2.3 mi',
                    isOpen: true,
                    imageUrl: AppImages.storeImage,
                    onTap: () {
                      Get.to(() => VendorDetailsView());
                    },
                  );
                },
              ),
            ),
            // Center(
            //   child: TextButton(
            //     onPressed: () {},
            //     child: const Text(
            //       'SHOW MORE VENDORS',
            //       style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
