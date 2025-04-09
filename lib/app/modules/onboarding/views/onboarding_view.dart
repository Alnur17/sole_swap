import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sole_swap/app/modules/onboarding/views/widgets/onboardingwidget.dart';

import '../../../../common/app_color/app_colors.dart';
import '../../../../common/app_images/app_images.dart';
import '../../authentication/auth_dashboard/views/auth_dashboard_view.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              OnboardingPage(
                image: AppImages.onboardingOne,
                title: "Welcome to Sole Swap The Future of Rentals",
                subtitle:
                "Rent and lend high-end sneakers in just a few taps.",
                highlightedText: ["Sole" , "Swap"],
                //backgroundImage: AppImages.onboardingBackOne,
              ),
              OnboardingPage(
                image: AppImages.onboardingTwo,
                title: "Step into the Future of Sneaker Culture.",
                subtitle:
                    "Find, rent, or list sneakers in a few taps",
                highlightedText: [],
                //backgroundImage: AppImages.onboardingBackTwo,
              ),
              OnboardingPage(
                image: AppImages.onboardingThree,
                title:  "Rent, Lend, and Earn with Sole Swap.",
                subtitle:
                    "Fast verification and secure deliveries, always.",
                highlightedText: ["Sole" , "Swap."],
                //backgroundImage: AppImages.onboardingBackTwo,
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            left: 40,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 8.0,
                    dotWidth: 12.0,
                    spacing: 16.0,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 40,
            bottom: 20,
            child: GestureDetector(
              onTap: () {
                if (_pageController.page != null) {
                  final nextPage = (_pageController.page! + 1).toInt();
                  if (nextPage < 3) {
                    _pageController.animateToPage(
                      nextPage,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Get.to(() => AuthDashboardView());
                  }
                }
              },
              child: Container(
                height: 54,
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: AppColors.black,
                ),
                child: Image.asset(
                  AppImages.arrowRight,
                  scale: 4,
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: 50,
          //   right: 16,
          //   child: TextButton(
          //     onPressed: () {
          //       //Get.to(() => DashboardView());
          //     },
          //     child: Text(
          //       "Skip",
          //       style: TextStyle(color: AppColors.black),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
