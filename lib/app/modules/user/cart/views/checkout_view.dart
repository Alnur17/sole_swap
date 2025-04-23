import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/cart/views/payment_view.dart';
import 'package:sole_swap/common/helper/contact_info_card.dart';
import 'package:sole_swap/common/widgets/custom_textfield.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../controllers/theme_controller.dart';

class CheckoutView extends GetView {
  const CheckoutView({super.key});

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
          'Checkout',
          style: appBarStyle.copyWith(
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
            sh20,
            Text(
              'Contact Information',
              style: h3.copyWith(
                color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
              ),
            ),
            sh8,
            // ListTile(
            //   contentPadding: EdgeInsets.zero,
            //   onTap: () {},
            //   leading: Container(
            //     padding: EdgeInsets.all(8),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(8),
            //       color: AppColors.background,
            //     ),
            //     child: Icon(Icons.message),
            //   ),
            //   title: Text(
            //     'saiidromeo@gmail.com',
            //     style: h5,
            //   ),
            //   subtitle: Text(
            //     'Email',
            //     style: h6.copyWith(color: AppColors.grey),
            //   ),
            //   trailing: Image.asset(
            //     AppImages.editBig,
            //     scale: 4,
            //   ),
            // ),
            ContactInfoCard(
              icon: Icons.message,
              title: 'saiidromeo@gmail.com',
              subtitle: 'Email',
              trailing: AppImages.editBig,
              onTap: () {
                print('Tapped on email card');
              },
            ),
            sh8,
            ContactInfoCard(
              icon: Icons.call,
              title: 'saiidromeo@gmail.com',
              subtitle: 'Email',
              trailing: AppImages.editBig,
              onTap: () {
                print('Tapped on email card');
              },
            ),
            sh20,
            Text(
              'Address',
              style: h3.copyWith(
                color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
              ),
            ),
            sh8,
            CustomTextField(
              hintText: 'Enter your address',
            ),
            sh40,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal', style: h5.copyWith(color: Colors.grey)),
                Text(
                  '\$30.00',
                  style: h5.copyWith(
                    fontWeight: FontWeight.w600,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
              ],
            ),
            sh8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shipping', style: h5.copyWith(color: Colors.grey)),
                Text(
                  '\$05.00',
                  style: h5.copyWith(
                    fontWeight: FontWeight.w600,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
              ],
            ),
            sh8,
            Divider(),
            sh8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Cost',
                  style: h3.copyWith(
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                Text(
                  '\$35.00',
                  style: h3.copyWith(
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
              ],
            ),
            sh16,
            CustomButton(
              text: 'Payment',
              onPressed: () {
                Get.to(() => PaymentView());
              },
            ),
            sh20,
          ],
        ),
      ),
    );
  }
}
