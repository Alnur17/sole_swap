import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_images/app_images.dart';

import '../../controllers/vendor_dashboard_controller.dart';

class VendorBottomNavBar extends StatefulWidget {
  const VendorBottomNavBar({super.key});

  @override
  State<VendorBottomNavBar> createState() => _VendorBottomNavBarState();
}

class _VendorBottomNavBarState extends State<VendorBottomNavBar> {
  final VendorDashboardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 4,
              blurRadius: 20,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.onItemTapped,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 0
                    ? Image.asset(AppImages.homeFilled, scale: 4)
                    : Image.asset(AppImages.home, scale: 4),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 1
                    ? Image.asset(AppImages.productsFilled, scale: 4)
                    : Image.asset(AppImages.products, scale: 4),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 2
                    ? Image.asset(AppImages.ordersFilled, scale: 4)
                    : Image.asset(AppImages.orders, scale: 4),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 3
                    ? Image.asset(AppImages.earningsFilled, scale: 4)
                    : Image.asset(AppImages.earnings, scale: 4),
                label: 'Earnings',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 4
                    ? Image.asset(AppImages.profileFilled, scale: 4)
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
