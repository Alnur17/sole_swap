import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_images/app_images.dart';

import '../../../../../../common/app_color/app_colors.dart';
import '../../../../../controllers/theme_controller.dart';
import '../../controllers/vendor_dashboard_controller.dart';

class VendorBottomNavBar extends StatefulWidget {
  const VendorBottomNavBar({super.key});

  @override
  State<VendorBottomNavBar> createState() => _VendorBottomNavBarState();
}

class _VendorBottomNavBarState extends State<VendorBottomNavBar> {
  final VendorDashboardController controller = Get.find();
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Obx(
        () => Container(
          height: 75,
          decoration: BoxDecoration(
            color: themeController.isDarkMode.value
                ? AppColors.black
                : AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 4,
                blurRadius: 20,
                offset: const Offset(0, -4),
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.onItemTapped,
            selectedItemColor: themeController.isDarkMode.value
                ? AppColors.white
                : Colors.black,
            unselectedItemColor: AppColors.grey,
            backgroundColor: AppColors.transparent,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 0
                    ? Image.asset(
                        AppImages.homeFilled,
                        scale: 4,
                        color: themeController.isDarkMode.value
                            ? AppColors.white
                            : AppColors.black,
                      )
                    : Image.asset(AppImages.home, scale: 4),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 1
                    ? Image.asset(
                        AppImages.productsFilled,
                        scale: 4,
                        color: themeController.isDarkMode.value
                            ? AppColors.white
                            : AppColors.black,
                      )
                    : Image.asset(AppImages.products, scale: 4),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 2
                    ? Image.asset(
                        AppImages.ordersFilled,
                        scale: 4,
                        color: themeController.isDarkMode.value
                            ? AppColors.white
                            : AppColors.black,
                      )
                    : Image.asset(AppImages.orders, scale: 4),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 3
                    ? Image.asset(
                        AppImages.earningsFilled,
                        scale: 4,
                        color: themeController.isDarkMode.value
                            ? AppColors.white
                            : AppColors.black,
                      )
                    : Image.asset(AppImages.earnings, scale: 4),
                label: 'Earnings',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 4
                    ? Image.asset(
                        AppImages.profileFilled,
                        scale: 4,
                        color: themeController.isDarkMode.value
                            ? AppColors.white
                            : AppColors.black,
                      )
                    : Image.asset(AppImages.profile, scale: 4),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
