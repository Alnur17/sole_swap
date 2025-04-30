import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sole_swap/app/controllers/theme_controller.dart';
import 'package:sole_swap/app/modules/user/Profile/views/notifications_view.dart';
import 'package:sole_swap/app/modules/user/home/views/new_sneakers_view.dart';
import 'package:sole_swap/app/modules/user/home/views/product_details_view.dart';
import 'package:sole_swap/app/modules/user/home/views/search_view.dart';
import 'package:sole_swap/app/modules/user/home/views/trending_sneakers_view.dart';
import 'package:sole_swap/app/modules/user/home/views/widgets/promo_banner.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_text_style/styles.dart';
import 'package:sole_swap/common/helper/new_shoe_card.dart';
import 'package:sole_swap/common/helper/recommended_shoe_card.dart';
import 'package:sole_swap/common/helper/trending_shoe_card.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';
import 'package:sole_swap/common/widgets/custom_row_header.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../cart/views/cart_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = Get.put(HomeController());

  final ThemeController themeController = Get.find();

  final List<Widget> promoBanners = [
    PromoBanner(
      title: "New Collection",
      discountPercentage: "20%",
      discountText: "Discount",
      subText: "on your first rent",
      buttonText: "Rent now",
      imagePath: AppImages.promoImageOne,
    ),
    PromoBanner(
      title: "Summer Sale",
      discountPercentage: "30%",
      discountText: "Off",
      subText: "on selected items",
      buttonText: "Rent now",
      imagePath: AppImages.promoImageTwo,
      onPressed: () {
        print("Rent now pressed!");
      },
    ),
    PromoBanner(
      title: "Winter Deals",
      discountPercentage: "15%",
      discountText: "Savings",
      subText: "on winter items",
      buttonText: "Explore",
      imagePath: AppImages.promoImageThree,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeController.isDarkMode.value
          ? Colors.black12
          : AppColors.background,
      appBar: AppBar(
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.transparent
            : AppColors.mainColor,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            sw5,
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(AppImages.profileImage),
            ),
            sw8,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello 👋🏻',
                  style: themeController.isDarkMode.value
                      ? h6.copyWith(color: AppColors.white)
                      : h6,
                ),
                Text(
                  'Saiid Romea',
                  style: themeController.isDarkMode.value
                      ? h5.copyWith(
                          color: AppColors.white, fontWeight: FontWeight.w500)
                      : h5.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(()=> NotificationsView());
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.grey),
              ),
              child: Image.asset(
                AppImages.notification,
                scale: 4,
                color: themeController.isDarkMode.value
                    ? AppColors.white
                    : null,
              ),
            ),
          ),
          sw8,
          GestureDetector(
            onTap: () {
              Get.to(() => CartView());
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.grey),
              ),
              child: Image.asset(
                AppImages.shop,
                scale: 4,
                color: themeController.isDarkMode.value
                    ? Colors.white
                    : AppColors.black,
              ),
            ),
          ),
          sw20
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sh8,
            GestureDetector(
              onTap: () {
                Get.to(() => SearchView());
              },
              child: Container(
                height: 48,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: themeController.isDarkMode.value
                      ? Colors.black
                      : AppColors.white,
                  //border: Border.all(color: AppColors.silver),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      AppImages.search,
                      scale: 4,
                      color: themeController.isDarkMode.value
                          ? Colors.white
                          : AppColors.black,
                    ),
                    sw12,
                    Text(
                      'Looking for sneakers',
                      style: h5.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
              ),
            ),
            sh16,
            CarouselSlider(
              options: CarouselOptions(
                height: 175,
                autoPlay: true,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  controller.onPageChanged(index);
                },
              ),
              items: promoBanners,
            ),
            sh12,
            Obx(
              () => Center(
                child: SmoothPageIndicator(
                  controller: PageController(
                    initialPage: controller.currentIndex.value,
                  ),
                  count: promoBanners.length,
                  effect: WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: themeController.isDarkMode.value
                        ? Colors.white
                        : Colors.black,
                    dotColor: Colors.grey,
                  ),
                ),
              ),
            ),
            sh16,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Recommended For you',
                style: themeController.isDarkMode.value
                    ? h3.copyWith(color: AppColors.white)
                    : h3,
              ),
            ),
            sh8,
            SizedBox(
              height: 230,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index == 4 - 1 ? 0 : 8,
                      bottom: 16,
                    ),
                    child: RecommendedShoeCard(
                      imagePath: AppImages.productRedWhiteNike,
                      name: 'Nike Jordan',
                      price: '\$60',
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomRowHeader(
                title: 'Trending Sneakers',
                subtitle: 'See All',
                onTap: () {
                  Get.to(() => TrendingSneakersView());
                },
              ),
            ),
            sh8,
            SizedBox(
              height: 190,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right: index == 4 - 1 ? 0 : 8,
                      bottom: 16,
                    ),
                    child: TrendingShoeCard(
                      imagePath: AppImages.productTrending,
                      name: 'Nike Jordan',
                      price: '\$33',
                      onTap: () {
                        Get.to(() => ProductDetailsView());
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomRowHeader(
                title: 'New Sneakers',
                subtitle: 'See All',
                onTap: () {
                  Get.to(() => NewSneakersView());
                },
              ),
            ),
            sh8,
            SizedBox(
              height: 135,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: 16,
                      right: index == 4 - 1 ? 0 : 8,
                    ),
                    child: NewShoeCard(
                      imagePath: AppImages.productNewSneakers,
                      productName: 'Nike Air Force 1',
                      price: '\$55',
                      title: 'Best Choice',
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
