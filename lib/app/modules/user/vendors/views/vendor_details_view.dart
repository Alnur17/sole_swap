import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/helper/new_shoe_card.dart';
import '../../../../../common/helper/trending_shoe_card.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../../common/widgets/custom_row_header.dart';
import '../../home/views/new_sneakers_view.dart';
import '../../home/views/product_details_view.dart';
import '../../home/views/trending_sneakers_view.dart';

class VendorDetailsView extends GetView {
  const VendorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        scrolledUnderElevation: 0,
        title: Text(
          'Vendor Details',
          style: titleStyle,
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CustomCircularContainer(
            imagePath: AppImages.arrowBack,
            onTap: () {
              Get.back();
            },
            padding: 4,
          ),
        ),
        actions: [
          CustomCircularContainer(
            imagePath: AppImages.shop,
            onTap: () {},
          ),
          sw20,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sh20,
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        AppImages.storeImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  sh20,
                  Row(
                    children: [
                      Text(
                        'SneakerHub Elite',
                        style: h3.copyWith(fontSize: 20),
                      ),
                      Spacer(),
                      Image.asset(
                        AppImages.stars,
                        scale: 4,
                      ),
                      sw8,
                      Text(
                        '4.5',
                        style: h5.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  sh8,
                  Row(
                    children: [
                      Image.asset(
                        AppImages.location,
                        scale: 4,
                      ),
                      sw8,
                      Text(
                        '2.3 km from Location',
                        style: h5.copyWith(fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        'View on Google Maps',
                        style: h6.copyWith(color: AppColors.textColorOrange),
                      ),
                    ],
                  ),
                  sh20,
                  Text(
                    'Description',
                    style: h3.copyWith(fontSize: 18),
                  ),
                  sh8,
                  Text(
                    '"Sneaker Haven offers a wide selection of high-end sneakers for rent. Whether you\'re looking for the latest Nike Air Jordans or a classic pair of Adidas, we have something for every sneaker enthusiast. Rent with us for your next event or casual outing!"',
                    style: h5,
                  ),
                ],
              ),
            ),
            sh20,
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
