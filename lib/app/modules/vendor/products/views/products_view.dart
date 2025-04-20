import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/app/modules/vendor/products/controllers/products_controller.dart';
import 'package:sole_swap/common/app_text_style/styles.dart';
import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../../common/widgets/custom_circular_container.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  final ProductsController productsController = Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        scrolledUnderElevation: 0,
        title: Text(
          'Products',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row containing the two buttons
            Row(
              children: [
                Obx(() => Expanded(
                      child: CustomButton(
                        height: 40,
                        text: 'Trending Sneakers',
                        onPressed: () =>
                            productsController.updateTab('Trending'),
                        backgroundColor:
                            productsController.selectedTab.value == 'Trending'
                                ? AppColors.grey
                                : AppColors.white,
                        borderColor: AppColors.grey,
                        textStyle: h6.copyWith(
                            color: productsController.selectedTab.value == 'New'
                                ? AppColors.black
                                : AppColors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                sw12,
                Obx(() => Expanded(
                      child: CustomButton(
                        height: 40,
                        text: 'New Sneakers',
                        onPressed: () => productsController.updateTab('New'),
                        backgroundColor:
                            productsController.selectedTab.value == 'New'
                                ? AppColors.grey
                                : AppColors.white,
                        borderColor: AppColors.grey,
                        // textColor: productsController.selectedTab.value == 'New'
                        //     ? AppColors.white
                        //     : AppColors.black,
                        textStyle: h6.copyWith(
                            color: productsController.selectedTab.value == 'New'
                                ? AppColors.white
                                : AppColors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ],
            ),
            const SizedBox(height: 16),
            Obx(() => Text(
                  productsController.selectedTab.value == 'Trending'
                      ? productsController.trendingData
                      : productsController.newData,
                  style: h3.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
