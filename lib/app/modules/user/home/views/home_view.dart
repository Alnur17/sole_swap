import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import 'package:sole_swap/common/widgets/custom_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = Get.put(HomeController());
  //final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // CarouselSlider for the promotional banners
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              autoPlay: false,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                controller.onPageChanged(index);
              },
            ),
            items: [
              PromoBanner(),
              // PromoBanner(),
              // PromoBanner(),
            ],
          ),
          const SizedBox(height: 8),
          // Pagination dots using SmoothPageIndicator
          Obx(
                () => SmoothPageIndicator(
              controller: PageController(initialPage: controller.currentIndex.value),
              count: 3,
              effect: const WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: Colors.black,
                dotColor: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Left side: Text and Button
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "New Collection",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "20% Discount",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 16),
              CustomButton(
                  width: 100,
                  text: 'Rent now', onPressed: (){
                Get.find<HomeController>().onRentNowPressed();
              }),
              // ElevatedButton(
              //   onPressed: () {
              //     controller.onRentNowPressed();
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.black,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              //   ),
              //   child: const Text(
              //     "Rent now",
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 16,
              //     ),
              //   ),
              // ),
            ],
          ),
          // Right side: Shoe Image
          Expanded(
            child: Image.asset(
              AppImages.productImage,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
