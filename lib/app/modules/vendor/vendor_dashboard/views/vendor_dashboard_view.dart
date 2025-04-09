import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/vendor/vendor_dashboard/views/widgets/vendor_bottom_nav_bar.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../controllers/vendor_dashboard_controller.dart';

class VendorDashboardView extends StatefulWidget {
  const VendorDashboardView({super.key});

  @override
  State<VendorDashboardView> createState() => _VendorDashboardViewState();
}

class _VendorDashboardViewState extends State<VendorDashboardView> {
  final VendorDashboardController controller = Get.put(VendorDashboardController());

  static const List<Widget> _pages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Products Page')),
    Center(child: Text('Orders Page')),
    Center(child: Text('Earnings Page')),
    Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Obx(() => _pages[controller.selectedIndex.value]),
      bottomNavigationBar: const VendorBottomNavBar(),
    );
  }
}
