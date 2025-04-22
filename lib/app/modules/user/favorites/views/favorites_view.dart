import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/home/views/product_details_view.dart';
import 'package:sole_swap/common/helper/favorite_card.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../controllers/theme_controller.dart';
import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    return Scaffold(
      backgroundColor: themeController.isDarkMode.value
          ? Colors.black87
          : AppColors.background,
      appBar: AppBar(
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.transparent
            : AppColors.background,
        scrolledUnderElevation: 0,
        title: Text('Favorites',
            style: titleStyle.copyWith(
              color: themeController.isDarkMode.value
                  ? AppColors.white
                  : AppColors.black,
            )),
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                mainAxisExtent: 200,
              ),
              itemBuilder: (context, index) {
                return FavoriteCard(
                  imagePath: AppImages.productTrending,
                  name: 'Nike Dunk Low',
                  price: '\$25',
                  onTap: () {
                    Get.to(() => ProductDetailsView());
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
