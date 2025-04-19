import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/profile/views/track_order_view.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import 'package:sole_swap/common/widgets/custom_button.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/helper/order_card.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';
import '../../../../../common/widgets/custom_textfield.dart';

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
            'Order',
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
                  'Write Review',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              sh16,
              // Product Info
              OrderCard(
                image: AppImages.productTrending,
                name: "Nike Air Force 1",
                size: "Size: 42 | 2 Pcs",
                price: "\$33",
              ),
              sh16,
              Align(
                alignment: Alignment.center,
                child: Text(
                  'How is your order',
                  style: h3,
                ),
              ),
              sh5,
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Please give your rating',
                  style: h6,
                ),
              ),
              sh8,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => const Icon(
                    Icons.star,
                    color: AppColors.textColorOrange,
                    size: 30,
                  ),
                ),
              ),
              sh16,
              // Review Text Field
              Text(
                'Add details review',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              sh8,
              CustomTextField(
                height: 100,
                hintText: 'Enter here',
              ),
              sh16,
              Row(
                children: [
                  Image.asset(
                    AppImages.gallery,
                    scale: 4,
                  ),
                  sw8,
                  Text(
                    'Add photo',
                    style: h5,
                  ),
                ],
              ),
              sh16,
              // Submit Button
              CustomButton(text: 'Submit', onPressed: () {}),
              sh16,
            ],
          ),
        );
      },
    );
  }
}
