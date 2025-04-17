import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/profile/views/about_us_view.dart';
import 'package:sole_swap/app/modules/user/profile/views/delivery_address_view.dart';
import 'package:sole_swap/app/modules/user/profile/views/orders_view.dart';
import 'package:sole_swap/app/modules/user/profile/views/privacy_policy_view.dart';
import 'package:sole_swap/app/modules/user/profile/views/return_view.dart';
import 'package:sole_swap/app/modules/user/profile/views/settings_view.dart';
import 'package:sole_swap/app/modules/user/profile/views/terms_of_services_view.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../authentication/sign_in/views/sign_in_view.dart';
import '../controllers/profile_controller.dart';
import 'edit_profile_view.dart';
import 'notifications_view.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        scrolledUnderElevation: 0,
        title: Text(
          'Profile',
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
                'Saiid Romeo',
                style: h2,
              ),
              sh24,
              ListTile(
                onTap: () {
                  Get.to(() => EditProfileView());
                },
                leading: Image.asset(
                  AppImages.person,
                  scale: 4,
                ),
                title: Text('Edit Profile'),
                trailing: Image.asset(
                  AppImages.arrowRight,
                  scale: 4,
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => SettingsView());
                },
                leading: Image.asset(
                  AppImages.settings,
                  scale: 4,
                ),
                title: Text('Settings'),
                trailing: Image.asset(
                  AppImages.arrowRight,
                  scale: 4,
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => DeliveryAddressView());
                },
                leading: Image.asset(
                  AppImages.locationOutline,
                  scale: 4,
                ),
                title: Text('Delivery Address'),
                trailing: Image.asset(
                  AppImages.arrowRight,
                  scale: 4,
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => OrdersView());
                },
                leading: Image.asset(
                  AppImages.order,
                  scale: 4,
                ),
                title: Text('Orders'),
                trailing: Image.asset(
                  AppImages.arrowRight,
                  scale: 4,
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => ReturnView());
                },
                leading: Image.asset(
                  AppImages.returns,
                  scale: 4,
                ),
                title: Text('Return'),
                trailing: Image.asset(
                  AppImages.arrowRight,
                  scale: 4,
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => NotificationsView());
                },
                leading: Image.asset(
                  AppImages.notifications,
                  scale: 4,
                ),
                title: Text('Notifications'),
                trailing: Image.asset(
                  AppImages.arrowRight,
                  scale: 4,
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => AboutUsView());
                },
                leading: Image.asset(
                  AppImages.aboutUs,
                  scale: 4,
                ),
                title: Text('About Us'),
                trailing: Image.asset(
                  AppImages.arrowRight,
                  scale: 4,
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => PrivacyPolicyView());
                },
                leading: Image.asset(
                  AppImages.privacy,
                  scale: 4,
                ),
                title: Text('Privacy Policy'),
                trailing: Image.asset(
                  AppImages.arrowRight,
                  scale: 4,
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(() => TermsOfServicesView());
                },
                leading: Image.asset(
                  AppImages.termsOfServices,
                  scale: 4,
                ),
                title: Text('Terms of Services'),
                trailing: Image.asset(
                  AppImages.arrowRight,
                  scale: 4,
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
                  style: TextStyle(color: AppColors.darkRed),
                ),
                trailing: Image.asset(
                  AppImages.arrowRight,
                  scale: 4,
                ),
              ),
              sh24
            ],
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
