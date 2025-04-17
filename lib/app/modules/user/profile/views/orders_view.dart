import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/profile/views/track_order_view.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import 'package:sole_swap/common/widgets/custom_button.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/helper/order_card.dart';
import '../../../../../common/widgets/custom_circular_container.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.background,
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
            'Cart',
            style: appBarStyle,
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "Active"),
              Tab(text: "Completed"),
              Tab(text: "Canceled"),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AppColors.black,
            labelColor: AppColors.black,
            unselectedLabelColor: AppColors.grey,
          ),
        ),
        body: TabBarView(
          children: [
            OrderList(status: "Active"),
            OrderList(status: "Completed"),
            OrderList(status: "Canceled"),
          ],
        ),
      ),
    );
  }
}

class OrderList extends StatelessWidget {
  final String status;

  const OrderList({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: OrderCard(
            image: AppImages.productTrending,
            name: "Nike Air Force 1",
            size: "Size: 42 | 2 Pcs",
            date: "25/03/25 - 08/04/25",
            price: "\$33",
            status: status,
            onStatusTap: () {
              if (status == "Active") {
                Get.to(() => TrackOrderView());
              } else if (status == "Completed") {
                showWriteReviewBottomSheet(context);
              }
            },
          ),
        );
      },
    );
  }
  void showWriteReviewBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: AppColors.white,
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              const Center(
                child: Text(
                  'WRITE REVIEW',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Product Info
              Row(
                children: [
                  // Placeholder for product image
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.grey[300], // Placeholder for the shoe image
                    child: const Icon(Icons.image, color: Colors.grey),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Nike Air Force I',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '4212 Pcs',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '\$33',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Rating Section
              const Text(
                'HOW IS YOUR ORDER',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: List.generate(
                  5,
                      (index) => const Icon(
                    Icons.star_border,
                    color: Colors.amber,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Review Text Field
              const Text(
                'Add details',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Share here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Add Photo Button
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt),
                label: const Text('Add photo'),
              ),
              const SizedBox(height: 16),
              // Submit Button
              CustomButton(text: 'Submit', onPressed: (){}),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
