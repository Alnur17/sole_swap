import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/profile/views/settings_view.dart';

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
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        scrolledUnderElevation: 0,
        title: Text(
          'Vendor Details',
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
                  Get.to(() => SettingsView());
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
                  Get.to(() => SettingsView());
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
                onTap: () {},
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
                  Get.to(() => SettingsView());
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
                  Get.to(() => SettingsView());
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
                  Get.offAll(() => SignInView(),
                      transition: Transition.leftToRight);
                },
                leading: Image.asset(
                  AppImages.logout,
                  scale: 4,
                ),
                title: Text('Sign Out'),
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
}
