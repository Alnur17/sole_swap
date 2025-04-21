import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_text_style/styles.dart';

import '../../../../../common/app_images/app_images.dart';
import '../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../common/widgets/custom_circular_container.dart';

class VendorEarningDetailsView extends GetView {
  const VendorEarningDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        scrolledUnderElevation: 0,
        title: Text(
          'Earning Details',
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.silver,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      AppImages.profileImage,
                      scale: 4,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                sw16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jane Cooper',
                      style: h3.copyWith(fontSize: 14),
                    ),
                    Text(
                      'abc@example.com',
                      style: h3.copyWith(fontSize: 14),
                    ),
                    Text(
                      '(515) 555-0115',
                      style: h3.copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Transaction Details Section
            const Text(
              'Transaction details :',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            _buildDetailRow('Transaction ID', '12345678'),
            _buildDetailRow('A/C holder name', 'Robert Fox'),
            _buildDetailRow('A/C number', '**** **** **** 456'),
            _buildDetailRow('Received Amount', '\$500'),
            const Divider(height: 24),
            _buildDetailRow('Final Amount', '\$500', isBold: true),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: isBold ? Colors.black : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
