import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../../common/widgets/custom_list_tile_with_color.dart';
import 'change_password_view.dart';

class SettingsView extends GetView {
  const SettingsView({super.key});
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
          'Settings',
          style: appBarStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              CustomListTileWithColor(
                leadingIconPath: AppImages.settings,
                trailingIconPath: AppImages.arrowRight,
                title: 'Change password',
                onTap: () {
                  Get.to(() => ChangePasswordView());
                },
              ),
              sh16,
              CustomListTileWithColor(
                  leadingIconPath: AppImages.delete,
                  title: 'Delete account',
                  onTap: () {
                    showDeleteAccountDialog(context);
                  })
            ],
          ),

      ),
    );
  }

  Future showDeleteAccountDialog(BuildContext context) {
    return Get.defaultDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 12),
      title: "Delete Your Account",
      //titlePadding: EdgeInsets.only(top: 12),
      backgroundColor: AppColors.white,
      radius: 8,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Text(
              "Are you sure you want to delete your account?",
              style: h4.copyWith(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          sh20,
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Get.back(),
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.white,
                    side: const BorderSide(color: AppColors.red),
                    //padding:
                    //const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(4),
                        bottom: Radius.circular(4),
                      ),
                    ),
                  ),
                  child: Text(
                    "Cancel",
                    style: h2.copyWith(fontSize: 12, color: AppColors.red),
                  ),
                ),
              ),
              sw10,
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.red,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // Box-like padding
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(4),
                        bottom: Radius.circular(4),
                      ),
                    ),
                    side: BorderSide.none,
                  ),
                  child: Text(
                    "Delete",
                    style: h2.copyWith(fontSize: 12, color: AppColors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}