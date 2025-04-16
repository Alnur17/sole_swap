import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sole_swap/app/modules/user/home/controllers/home_controller.dart';
import 'package:sole_swap/common/app_text_style/styles.dart';
import 'package:sole_swap/common/widgets/custom_button.dart';
import 'package:sole_swap/common/widgets/custom_circular_container.dart';
import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/helper/revied_card.dart';
import '../../../../../common/size_box/custom_sizebox.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  final controller = Get.put(HomeController());
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.background,
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
        title: Text(
          'Details',
          style: appBarStyle,
        ),
        centerTitle: true,
        actions: [
          CustomCircularContainer(
            imagePath: AppImages.shop,
            onTap: () {
              Get.back();
            },
          ),
          sw20,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => SizedBox(
                height: 250,
                child: Stack(
                  children: [
                    PageView(
                      controller: _pageController,
                      children: controller.images
                          .map(
                            (image) => Container(
                              height: Get.height,
                              decoration: BoxDecoration(
                                color: AppColors.background,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Positioned(
                      bottom: 16,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: SmoothPageIndicator(
                          controller: _pageController,
                          count: controller.images.length,
                          effect: WormEffect(
                            activeDotColor: AppColors.textColorOrange,
                            dotColor: AppColors.grey,
                            dotHeight: 4,
                            dotWidth: 24,
                            spacing: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nike Air Max 1 Premium',
                    style: h2,
                  ),
                  sh8,
                  Row(
                    children: [
                      Text(
                        '\$100',
                        style: h1.copyWith(fontWeight: FontWeight.w600),
                      ),
                      sw8,
                      Text(
                        'Market Price',
                        style: h4.copyWith(color: AppColors.textColorOrange),
                      ),
                    ],
                  ),
                  sh8,
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.textColorOrange,
                      ),
                      sw5,
                      Text(
                        '4.5',
                        style: h5.copyWith(fontWeight: FontWeight.w500),
                      ),
                      sw8,
                      Container(
                        height: 4,
                        width: 3,
                        decoration: ShapeDecoration(
                            shape: CircleBorder(), color: Colors.black),
                      ),
                      sw8,
                      Text(
                        '123 Reviews',
                        style: h5.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  sh20,
                  Row(
                    children: [
                      Text(
                        'SneakerHub Elite',
                        style: h3.copyWith(fontSize: 18),
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
                    'The Nike Air Max 1 is designed for comfort and style, perfect for casual wear and everyday activities. Features premium materials and iconic Air cushioning for all-day comfort.',
                    style: h5,
                  ),
                  sh20,
                  Row(
                    children: [
                      Image.asset(
                        AppImages.right,
                        scale: 4,
                      ),
                      sw8,
                      Text(
                        'Great for casual wear',
                        style: h4,
                      ),
                    ],
                  ),
                  sh8,
                  Row(
                    children: [
                      Image.asset(
                        AppImages.close,
                        scale: 4,
                      ),
                      sw8,
                      Text(
                        'Not suitable for basketball',
                        style: h4,
                      ),
                    ],
                  ),
                  sh20,
                  Text(
                    'Rental Duration',
                    style: h3.copyWith(fontSize: 18),
                  ),
                  sh8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildDurationButton(1, '1 Day', '\$5'),
                      _buildDurationButton(2, '2 Day', '\$8'),
                      _buildDurationButton(3, '3 Day', '\$15'),
                      _buildDurationButton(4, '4 Day', '\$20'),
                    ],
                  ),
                  sh20,
                  Text(
                    'Select Size',
                    style: h3.copyWith(fontSize: 18),
                  ),
                  sh8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildDropdown('US SIZE', ['US 8', 'US 9', 'US 10'],
                          controller.selectedUsSize),
                      _buildDropdown('UK SIZE', ['UK 7', 'UK 8', 'UK 9'],
                          controller.selectedUkSize),
                      _buildDropdown('EU SIZE', ['EU 42', 'EU 43', 'EU 44'],
                          controller.selectedEuSize),
                    ],
                  ),
                  sh20,
                  Text(
                    'Customer Reviews',
                    style: h3.copyWith(fontSize: 18),
                  ),
                  sh12,
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ReviewCard(
                        profileImageUrl: AppImages.profileImage,
                        name: 'Courtney Henry',
                        ratingImagePath: AppImages.stars,
                        reviewText:
                            '"Rented the Nike Air Max 1 for a weekend, loved the comfort and style. Perfect for casual wear!"',
                        onTap: () {
                          print('Review card tapped!');
                        },
                      );
                    },
                  ),
                  sh20,
                  Container(
                    //height: 200,
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.containerColor,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.warning,
                              color: AppColors.darkRed,
                            ),
                            sw5,
                            Text(
                              'Important Notes',
                              style: h3.copyWith(
                                  fontSize: 18, color: AppColors.darkRed),
                            ),
                          ],
                        ),
                        sh8,
                        Text(
                          'Not suitable for outdoor sports',
                          style: h5.copyWith(color: AppColors.darkRed),
                        ),
                        sh8,
                        Text(
                          'Not recommended for rainy day use',
                          style: h5.copyWith(color: AppColors.darkRed),
                        ),
                        sh8,
                        Text(
                          'Please return in original condition',
                          style: h3.copyWith(color: AppColors.darkRed),
                        ),
                      ],
                    ),
                  ),
                  sh60,
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: AppColors.white,
        child: Row(
          children: [
            Container(
              height: 48,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey),
              ),
              child: Image.asset(
                AppImages.shop,
                scale: 4,
              ),
            ),
            Expanded(
              child: CustomButton(
                text: 'Rent Now - \$15',
                onPressed: () {},
                borderRadius: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDurationButton(int duration, String label, String price) {
    return Obx(() {
      bool isSelected = controller.selectedDuration.value == duration;
      return GestureDetector(
        onTap: () {
          controller.selectDuration(duration);
        },
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: isSelected
                ? AppColors.grey.withOpacity(0.3)
                : AppColors.transparent,
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: h4.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                price,
                style: h5.copyWith(color: AppColors.grey),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildDropdown(
      String label, List<String> items, RxString selectedValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: h5.copyWith(color: AppColors.grey),
        ),
        sh5,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Obx(() => DropdownButton<String>(
                dropdownColor: AppColors.white,
                value: selectedValue.value,
                underline: SizedBox(),
                items: items.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: h5),
                  );
                }).toList(),
                onChanged: (value) {
                  selectedValue.value = value!;
                },
              )),
        ),
      ],
    );
  }
}
