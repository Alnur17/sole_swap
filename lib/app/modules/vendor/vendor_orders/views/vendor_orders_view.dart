import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/vendor/vendor_orders/views/vendor_order_details_view.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';
import 'package:sole_swap/common/widgets/custom_dropdown.dart';
import 'package:sole_swap/common/widgets/search_filed.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../controllers/theme_controller.dart';

class VendorOrdersView extends StatefulWidget {
  const VendorOrdersView({super.key});

  @override
  State<VendorOrdersView> createState() => _VendorOrdersViewState();
}

class _VendorOrdersViewState extends State<VendorOrdersView> {
  final ThemeController themeController = Get.find();

  var selectedValue = 'Pending'.obs;

  final List<Map<String, String?>> dummyData = [
    {
      'orderId': '01',
      'customerName': 'Robert Fox',
      'ProductName': 'Nike Air Force 1',
      'quantity': '2',
      'amount': '\$200',
    },
    {
      'id': '02',
      'fullName': 'Jane Doe',
      'accNumber': 'Nike Air Force 3',
      'date': '1',
      'amount': '\$400',
    },
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
        title: Text(
          'Orders',
          style: titleStyle.copyWith(
            color: themeController.isDarkMode.value
                ? AppColors.white
                : AppColors.black,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 16),
        //   child: CustomCircularContainer(
        //     imagePath: AppImages.arrowBack,
        //     onTap: () {
        //       Get.back();
        //     },
        //     padding: 4,
        //   ),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchFiled(
              onChanged: (value) {},
            ),
            sh20,
            Obx(
              () {
                return CustomDropdown(
                  width: 120,
                  value: selectedValue.value,
                  items: [
                    DropdownMenuItem(
                      value: 'Pending',
                      child: Text('Pending'),
                    ),
                    DropdownMenuItem(
                      value: 'Complete',
                      child: Text('Complete'),
                    ),
                  ],
                  onChanged: (value) {
                    selectedValue.value = value!;
                  },
                );
              },
            ),
            sh20,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                color: AppColors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order ID',
                    style: h6.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Customer',
                    style: h6.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Product Name',
                    style: h6.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Quantity',
                    style: h6.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Amount',
                    style: h6.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  color: themeController.isDarkMode.value ? Colors.white12 : AppColors.white,
                ),
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  itemCount: dummyData.length,
                  itemBuilder: (context, index) {
                    final data = dummyData[index];
                    return ListTile(
                      onTap: (){
                        Get.to(()=> VendorOrderDetailsView());
                      },
                      contentPadding: EdgeInsets.zero,
                      leading: Text(
                        data['orderId'] ?? 'N/A',
                        style: h6.copyWith(
                          color: themeController.isDarkMode.value
                              ? AppColors.white
                              : AppColors.black,
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            data['customerName'] ?? 'No Name',
                            style: h6.copyWith(
                              color: themeController.isDarkMode.value
                                  ? AppColors.white
                                  : AppColors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            data['productName'] ?? 'No product',
                            style: h6.copyWith(
                              color: themeController.isDarkMode.value
                                  ? AppColors.white
                                  : AppColors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            data['quantity'] ?? '0',
                            style: h6.copyWith(
                              color: themeController.isDarkMode.value
                                  ? AppColors.white
                                  : AppColors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      trailing: SizedBox(
                        width: 45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                data['amount'] ?? '\$0',
                                style: h6.copyWith(
                                  color: themeController.isDarkMode.value
                                      ? AppColors.white
                                      : AppColors.black,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Image.asset(
                              AppImages.arrowRight,
                              scale: 4,
                              color: themeController.isDarkMode.value
                                  ? AppColors.white
                                  : AppColors.black,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
