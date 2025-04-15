import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sole_swap/app/modules/user/home/views/new_sneakers_view.dart';
import 'package:sole_swap/app/modules/user/home/views/search_view.dart';
import 'package:sole_swap/app/modules/user/home/views/trending_sneakers_view.dart';
import 'package:sole_swap/app/modules/user/home/views/widgets/promo_banner.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/helper/new_shoe_card.dart';
import 'package:sole_swap/common/helper/recommended_shoe_card.dart';
import 'package:sole_swap/common/helper/trending_shoe_card.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';
import 'package:sole_swap/common/widgets/custom_row_header.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = Get.put(HomeController());

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
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
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
                  style: h6,
                ),
                Text(
                  'Saiid Romea',
                  style: h5.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.grey),
              ),
              child: Image.asset(
                AppImages.notification,
                scale: 4,
              ),
            ),
          ),
          sw8,
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.grey),
              ),
              child: Image.asset(
                AppImages.shop,
                scale: 4,
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
                  color: AppColors.white,
                  border: Border.all(color: AppColors.silver),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      AppImages.search,
                      scale: 4,
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
                height: 170,
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
                  effect: const WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: Colors.black,
                    dotColor: Colors.grey,
                  ),
                ),
              ),
            ),
            sh16,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Recommended For you',
                style: h3,
              ),
            ),
            sh8,
            SizedBox(
              height: 230,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16),
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
                padding: EdgeInsets.symmetric(horizontal: 16),
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
                        // Get.to(()=> TrendingSneakersView());
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
                padding: EdgeInsets.symmetric(horizontal: 16),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: 16,
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
