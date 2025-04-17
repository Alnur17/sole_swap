import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';

class NotificationsView extends GetView {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.background,
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
          'Details',
          style: appBarStyle,
        ),
        centerTitle: true,
        actions: [
          Text(
            'Clear All',
            style: h4.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.textColorOrange,
            ),
          ),
          sw20,
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 16),
              itemCount: 30,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                  child: Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(),
                          color: AppColors.black,
                        ),
                      ),
                      sw12,
                      Container(
                        width: 48,
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: AppColors.background,
                        ),
                        child: Image.asset(
                          AppImages.notification,
                          scale: 4,
                        ),
                      ),
                      sw12,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to notifications page',
                              style: h4,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Text(
                              '1 day ago',
                              style: h4.copyWith(
                                fontSize: 14,
                                color: AppColors.grey,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
