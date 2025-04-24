import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/app/modules/vendor/products/controllers/products_controller.dart';
import 'package:sole_swap/app/modules/vendor/products/views/add_products_view.dart';
import 'package:sole_swap/common/app_text_style/styles.dart';
import 'package:sole_swap/common/helper/vendor_trending_card.dart';
import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../controllers/theme_controller.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  final ProductsController productsController = Get.put(ProductsController());
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeController.isDarkMode.value
          ? Colors.black12
          : AppColors.background,
      appBar: AppBar(
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.transparent
            : AppColors.mainColor,
        scrolledUnderElevation: 0,
        title: Text(
          'Products',
          style: titleStyle.copyWith(
            color: themeController.isDarkMode.value
                ? AppColors.white
                : AppColors.black,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                            color: productsController.selectedTab.value ==
                                    'Trending'
                                ? AppColors.white
                                : AppColors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                sw12,
                Obx(
                  () => Expanded(
                    child: CustomButton(
                      height: 40,
                      text: 'New Sneakers',
                      onPressed: () => productsController.updateTab('New'),
                      backgroundColor:
                          productsController.selectedTab.value == 'New'
                              ? AppColors.grey
                              : AppColors.white,
                      borderColor: AppColors.grey,
                      textStyle: h6.copyWith(
                          color: productsController.selectedTab.value == 'New'
                              ? AppColors.white
                              : AppColors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            sh16,
            GestureDetector(
              onTap: (){
                Get.to(()=> AddProductsView());
              },
              child: Container(
                height: 40,
                width: 140,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: AppColors.black),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffffffff),
                      Color(0xff000000),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: ShapeDecoration(
                            shape: CircleBorder(), color: AppColors.white),
                        child: Image.asset(
                          AppImages.add,
                          scale: 4,
                        )),
                    Text(
                      'Add Products',
                      style: h5.copyWith(color: AppColors.white),
                    ),
                  ],
                ),
              ),
            ),
            sh16,
            Expanded(
              child: Obx(() => GridView.builder(
                    itemCount: productsController.currentProducts.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      mainAxisExtent: 165,
                    ),
                    itemBuilder: (context, index) {
                      final product = productsController.currentProducts[index];
                      return VendorTrendingCard(
                        imagePath: product['imagePath']!,
                        name: product['name']!,
                        price: product['price']!,
                        onTap: () {},
                        onEditTap: () {},
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
