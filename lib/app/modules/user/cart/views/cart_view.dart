import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/cart/views/checkout_view.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';
import 'package:sole_swap/common/widgets/custom_button.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/helper/cart_item.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../../common/widgets/custom_textfield.dart';
import '../../../../controllers/theme_controller.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});

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
          'Cart',
          style: appBarStyle.copyWith(
            color: themeController.isDarkMode.value
                ? AppColors.white
                : AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: CartItem(
                    imagePath: AppImages.productTrending,
                    name: 'Nike Dunk Low',
                    size: '42',
                    price: '15',
                    quantity: 1,
                    increment: () {},
                    decrement: () {},
                    onDeleteTap: () {},
                  ),
                );
              },
            ),
          ),
          sh16,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Promo code',
                  style: h3.copyWith(
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                sh8,
                CustomTextField(
                  hintText: 'Enter promo code',
                  sufIcon: Padding(
                    padding: const EdgeInsets.all(6),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.black,
                        ),
                        child: Image.asset(
                          AppImages.arrowRight,
                          scale: 4,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                sh20,
                // Subtotal, Shipping, and Total
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Subtotal', style: TextStyle(color: Colors.grey)),
                    Text('\$30.00',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                sh8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping', style: TextStyle(color: Colors.grey)),
                    Text('\$05.00',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                sh8,
                Divider(),
                sh8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Cost',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('\$35.00',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ],
                ),
                sh16,
                CustomButton(
                  text: 'Checkout',
                  onPressed: () {
                    Get.to(() => CheckoutView());
                  },
                ),
                sh20,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
