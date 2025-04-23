import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/app/modules/vendor/earnings/views/vendor_earning_details_view.dart';
import 'package:sole_swap/app/modules/vendor/earnings/views/withdraw_successful_view.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_button.dart';
import '../../../../controllers/theme_controller.dart';

class EarningsView extends StatefulWidget {
  const EarningsView({super.key});

  @override
  State<EarningsView> createState() => _EarningsViewState();
}

class _EarningsViewState extends State<EarningsView> {
  final ThemeController themeController = Get.find();

  final List<Map<String, String?>> dummyData = [
    {
      'id': '01',
      'fullName': 'Robert Fox',
      'accNumber': '(516) 831-1111',
      'date': '05-24-2025',
      'amount': '\$200',
    },
    {
      'id': '02',
      'fullName': 'Jane Doe',
      'accNumber': '(516) 831-2222',
      'date': '05-23-2025',
      'amount': '\$400',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeController.isDarkMode.value
          ? Colors.black87
          : AppColors.background,
      appBar: AppBar(
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.transparent
            : AppColors.mainColor,
        scrolledUnderElevation: 0,
        title: Text(
          'Earning',
          style: titleStyle.copyWith(
            color: themeController.isDarkMode.value
                ? AppColors.white
                : AppColors.black,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.deepBlueLight,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Balance',
                    style:
                        h4.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  sh5,
                  Text(
                    '\$1000',
                    style: h1,
                  ),
                  sh24,
                  CustomButton(
                    text: 'Withdraw',
                    onPressed: () {
                      Get.to(() => WithdrawSuccessfulView());
                    },
                    backgroundColor: AppColors.deepBlue,
                    textStyle: h3.copyWith(
                        fontWeight: FontWeight.w500, color: AppColors.white),
                  ),
                ],
              ),
            ),
            sh16,
            Text(
              'Recent Transactions',
              style: h3.copyWith(
                fontWeight: FontWeight.w500,
                color: themeController.isDarkMode.value
                    ? AppColors.white
                    : AppColors.black,
              ),
            ),
            sh16,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                color: AppColors.deepBlue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '#Sl',
                    style: h6.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Full Name',
                    style: h6.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Acc Number',
                    style: h6.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Date',
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
                  color: themeController.isDarkMode.value
                      ? Colors.white12
                      : AppColors.white,
                ),
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  itemCount: dummyData.length,
                  itemBuilder: (context, index) {
                    final data = dummyData[index];
                    return ListTile(
                      onTap: () {
                        Get.to(() => VendorEarningDetailsView());
                      },
                      contentPadding: EdgeInsets.zero,
                      leading: Text(
                        data['id'] ?? 'N/A',
                        style: h7.copyWith(
                          color: themeController.isDarkMode.value
                              ? AppColors.white
                              : AppColors.black,
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            data['fullName'] ?? 'No Name',
                            style: h7.copyWith(
                              color: themeController.isDarkMode.value
                                  ? AppColors.white
                                  : AppColors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            data['accNumber'] ?? 'No account',
                            style: h7.copyWith(
                              color: themeController.isDarkMode.value
                                  ? AppColors.white
                                  : AppColors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            data['date'] ?? 'No Date',
                            style: h7.copyWith(
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
                        width: 40,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                data['amount'] ?? '\$0',
                                style: h7.copyWith(
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
