import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import '../../../../../../common/app_color/app_colors.dart';
import '../../../../../controllers/theme_controller.dart';
import '../../controllers/dashboard_controller.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final DashboardController controller = Get.find();
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
                : AppColors.black,
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
                        AppImages.vendorFilled,
                        scale: 4,
                        color: themeController.isDarkMode.value
                            ? AppColors.white
                            : AppColors.black,
                      )
                    : Image.asset(AppImages.vendor, scale: 4),
                label: 'Vendor',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 2
                    ? Image.asset(
                        AppImages.favoriteFilled,
                        scale: 4,
                        color: themeController.isDarkMode.value
                            ? AppColors.white
                            : AppColors.black,
                      )
                    : Image.asset(AppImages.favorite, scale: 4),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 3
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
