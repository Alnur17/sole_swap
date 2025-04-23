import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';
import 'package:sole_swap/common/widgets/custom_circular_container.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/helper/trending_shoe_card.dart';
import '../../../../controllers/theme_controller.dart';

class TrendingSneakersView extends GetView {
  const TrendingSneakersView({super.key});

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
          'Trending Sneakers',
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
        actions: [
          CustomCircularContainer(
            imagePath: AppImages.shop,
            onTap: () {},
          ),
          sw20,
        ],
      ),
      body: Column(
        children: [
          //sh20,
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                mainAxisExtent: 170,
              ),
              itemBuilder: (context, index) {
                return TrendingShoeCard(
                  imagePath: AppImages.productTrending,
                  name: 'Nike Jordan',
                  price: '\$33',
                  onTap: () {
                    // Get.to(()=> TrendingSneakersView());
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
