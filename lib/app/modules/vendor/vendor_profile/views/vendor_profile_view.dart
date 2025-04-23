import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/vendor/vendor_profile/views/vendor_about_us.dart';
import 'package:sole_swap/app/modules/vendor/vendor_profile/views/vendor_edit_profile_view.dart';
import 'package:sole_swap/app/modules/vendor/vendor_profile/views/vendor_notifications.dart';
import 'package:sole_swap/app/modules/vendor/vendor_profile/views/vendor_privacy_policy.dart';
import 'package:sole_swap/app/modules/vendor/vendor_profile/views/vendor_settings.dart';
import 'package:sole_swap/app/modules/vendor/vendor_profile/views/vendor_terms_of_services.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../controllers/theme_controller.dart';
import '../../../authentication/sign_in/views/sign_in_view.dart';

class VendorProfileView extends StatefulWidget {
  const VendorProfileView({super.key});

  @override
  State<VendorProfileView> createState() => _VendorProfileViewState();
}

class _VendorProfileViewState extends State<VendorProfileView> {
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.isDarkMode.value
            ? Colors.black87
            : AppColors.background,
        appBar: AppBar(
          backgroundColor: themeController.isDarkMode.value
              ? AppColors.transparent
              : AppColors.background,
          scrolledUnderElevation: 0,
          title: Text(
            'Profile',
            style: titleStyle.copyWith(
              color: themeController.isDarkMode.value
                  ? AppColors.white
                  : AppColors.black,
            ),
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
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                sh24,
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage(AppImages.profile),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: AppColors.whiteDark,
                        ),
                        child: Image.asset(
                          AppImages.edit,
                          scale: 4,
                        ),
                      ),
                    ),
                  ],
                ),
                sh16,
                Text(
                  'Sneaker Vault',
                  style: h2.copyWith(
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                sh24,
                ListTile(
                  leading: Icon(
                    Icons.format_paint_outlined,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                  title: Text(
                    'Dark Mode',
                    style: h4.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  trailing: Obx(
                    () => Switch(
                      value: themeController.isDarkMode.value,
                      onChanged: (value) {
                        themeController.toggleTheme();
                      },
                      activeColor: AppColors.white,
                      activeTrackColor: AppColors.blue,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => VendorEditProfileView());
                  },
                  leading: Image.asset(
                    AppImages.person,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                  title: Text(
                    'Edit Profile',
                    style: h4.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  trailing: Image.asset(
                    AppImages.arrowRight,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => VendorSettings());
                  },
                  leading: Image.asset(
                    AppImages.settings,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                  title: Text(
                    'Settings',
                    style: h4.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  trailing: Image.asset(
                    AppImages.arrowRight,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => VendorNotifications());
                  },
                  leading: Image.asset(
                    AppImages.notifications,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                  title: Text(
                    'Notifications',
                    style: h4.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  trailing: Image.asset(
                    AppImages.arrowRight,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => VendorAboutUsView());
                  },
                  leading: Image.asset(
                    AppImages.aboutUs,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                  title: Text(
                    'About Us',
                    style: h4.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  trailing: Image.asset(
                    AppImages.arrowRight,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => VendorPrivacyPolicy());
                  },
                  leading: Image.asset(
                    AppImages.privacy,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                  title: Text(
                    'Privacy Policy',
                    style: h4.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  trailing: Image.asset(
                    AppImages.arrowRight,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => VendorTermsOfServicesView());
                  },
                  leading: Image.asset(
                    AppImages.termsOfServices,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                  title: Text(
                    'Terms of Services',
                    style: h4.copyWith(
                      color: themeController.isDarkMode.value
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                  trailing: Image.asset(
                    AppImages.arrowRight,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    _showLogoutPopup();
                  },
                  leading: Image.asset(
                    AppImages.logout,
                    scale: 4,
                  ),
                  title: Text(
                    'Sign Out',
                    style: h5.copyWith(color: AppColors.darkRed),
                  ),
                  trailing: Image.asset(
                    AppImages.arrowRight,
                    scale: 4,
                    color: themeController.isDarkMode.value
                        ? AppColors.white
                        : AppColors.black,
                  ),
                ),
                sh24
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showLogoutPopup() {
    Get.dialog(
      AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text('Do you want to logout?',
            style: h3, textAlign: TextAlign.center),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                onPressed: () {
                  // log('========== User token ========== ${LocalStorage.getData(key: AppConstant.token)}');
                  // LocalStorage.removeData(key: AppConstant.token);
                  Get.offAll(() => SignInView(),
                      transition: Transition.leftToRight);
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.darkRed,
                  //side: BorderSide(color: AppColors.mainColor, width: 1.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minimumSize: Size(100, 40),
                ),
                child: Text(
                  'Yes',
                  style: h3.copyWith(fontSize: 14, color: AppColors.mainColor),
                ),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () => Get.back(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  side: BorderSide(color: AppColors.darkRed, width: 1.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minimumSize: Size(100, 40),
                ),
                child: Text(
                  'No',
                  style: h3.copyWith(fontSize: 14, color: AppColors.darkRed),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
