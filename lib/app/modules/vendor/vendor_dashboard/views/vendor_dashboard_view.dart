import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/vendor/earnings/views/earnings_view.dart';
import 'package:sole_swap/app/modules/vendor/products/views/products_view.dart';
import 'package:sole_swap/app/modules/vendor/vendor_dashboard/views/widgets/vendor_bottom_nav_bar.dart';
import 'package:sole_swap/app/modules/vendor/vendor_home/views/vendor_home_view.dart';
import 'package:sole_swap/app/modules/vendor/vendor_orders/views/vendor_orders_view.dart';
import 'package:sole_swap/app/modules/vendor/vendor_profile/views/vendor_profile_view.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../controllers/theme_controller.dart';
import '../controllers/vendor_dashboard_controller.dart';

class VendorDashboardView extends StatefulWidget {
  const VendorDashboardView({super.key});

  @override
  State<VendorDashboardView> createState() => _VendorDashboardViewState();
}

class _VendorDashboardViewState extends State<VendorDashboardView> {
  final VendorDashboardController controller =
      Get.put(VendorDashboardController());
  final ThemeController themeController = Get.find();

  static const List<Widget> _pages = [
    VendorHomeView(),
    ProductsView(),
    VendorOrdersView(),
    EarningsView(),
    VendorProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.isDarkMode.value
            ? Colors.white12
            : AppColors.background,
        body: Obx(() => _pages[controller.selectedIndex.value]),
        bottomNavigationBar: const VendorBottomNavBar(),
      ),
    );
  }
}
