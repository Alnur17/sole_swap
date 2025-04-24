import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/Favorites/views/favorites_view.dart';
import 'package:sole_swap/app/modules/user/Profile/views/profile_view.dart';
import 'package:sole_swap/app/modules/user/home/views/home_view.dart';
import 'package:sole_swap/app/modules/user/vendors/views/vendor_view.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import '../../../../controllers/theme_controller.dart';
import '../controllers/dashboard_controller.dart';
import 'widgets/bottom_nav_bar.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final DashboardController controller = Get.put(DashboardController());
  final ThemeController themeController = Get.find();

  static const List<Widget> _pages = [
    HomeView(),
    VendorView(),
    FavoritesView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.isDarkMode.value
            ? Colors.white12
            : AppColors.background,
        body: Obx(() => _pages[controller.selectedIndex.value]),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
