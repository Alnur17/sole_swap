import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/app_color/app_colors.dart';
import '../../../../common/app_images/app_images.dart';
import '../../../controllers/theme_controller.dart';
import '../../onboarding/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final ThemeController themeController = Get.find();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => OnboardingView(),
        transition: Transition.rightToLeft,
        duration: Duration(seconds: 1)
     );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeController.isDarkMode.value ? Colors.black87 : AppColors.splashBackColor,
      body: Center(
        child: Image.asset(AppImages.splashLogo,scale: 4,),
      ),
    );
  }
}
