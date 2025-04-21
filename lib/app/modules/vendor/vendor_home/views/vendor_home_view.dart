import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import 'package:get/get.dart';
import 'package:sole_swap/app/modules/vendor/vendor_profile/views/vendor_notifications.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import 'package:sole_swap/common/helper/monthly_card.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';
import 'package:sole_swap/common/widgets/custom_dropdown.dart';

import '../../../../../common/app_color/app_colors.dart';
import '../../../../../common/app_text_style/styles.dart';
import '../controllers/vendor_home_controller.dart';

class VendorHomeView extends GetView<VendorHomeController> {
  const VendorHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var selectedValue = '2025'.obs;
    var selectedMonth = 'Mar'.obs;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: AppColors.background,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(AppImages.profileImage),
            ),
          ),
          //centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.location,
                scale: 4,
              ),
              sw8,
              Text(
                'California',
                style: h5,
              ),
              sw8,
              Image.asset(
                AppImages.arrowDown,
                scale: 4,
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(()=> VendorNotifications());
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
                ),
              ),
            ),
            sw20
          ],
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sh20,
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.silver,
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        AppImages.storeImage,
                        scale: 4,
                        fit: BoxFit.cover,
                      )),
                ),
                sh20,
                Text(
                  'Sneaker Vault',
                  style: h3.copyWith(fontSize: 20),
                ),
                sh20,
                Obx(
                  () => Row(
                    children: [
                      Expanded(
                        child: MonthlyCard(
                          title: 'Total Revenue',
                          value: '\$18,322',
                          percentageChange: '4%',
                          selectedMonth: selectedMonth.value,
                          onMonthChanged: (value) {
                            selectedMonth.value = value!;
                          },
                        ),
                      ),
                      Expanded(
                        child: MonthlyCard(
                          title: 'Total Products',
                          value: '45,000',
                          percentageChange: '4%',
                          selectedMonth: selectedMonth.value,
                          onMonthChanged: (value) {
                            selectedMonth.value = value!;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                sh20,
                Card(
                  color: AppColors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Earning Summery',
                              style: h6,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Yearly Revenue',
                                  style: h6,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.green[50]),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        AppImages.graph,
                                        scale: 4,
                                      ),
                                      sw5,
                                      Text(
                                        '-9%',
                                        style:
                                            h6.copyWith(color: AppColors.green),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Obx(
                              () => CustomDropdown(
                                value: selectedValue.value,
                                items: [
                                  DropdownMenuItem(
                                    value: '2025',
                                    child: Text('2025'),
                                  ),
                                  DropdownMenuItem(
                                    value: '2024',
                                    child: Text('2024'),
                                  ),
                                ],
                                onChanged: (value) {
                                  selectedValue.value = value!;
                                },
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        sh12,
                        SizedBox(
                          height: 220,
                          child: BarChart(
                            BarChartData(
                              alignment: BarChartAlignment.spaceAround,
                              maxY: 15,
                              barTouchData: BarTouchData(enabled: false),
                              titlesData: FlTitlesData(
                                show: true,
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget: (value, meta) {
                                      const months = [
                                        'Jan',
                                        'Feb',
                                        'Mar',
                                        'Apr',
                                        'May',
                                        'Jun',
                                        'Jul',
                                        'Aug',
                                        'Sep',
                                        'Oct',
                                        'Nov',
                                        'Dec'
                                      ];
                                      return Text(
                                        months[value.toInt()],
                                        style: h7,
                                      );
                                    },
                                  ),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    interval: 5,
                                    reservedSize: 40,
                                    getTitlesWidget: (value, meta) {
                                      return Text(
                                        '${value.toInt()}K',
                                        style: const TextStyle(fontSize: 12),
                                      );
                                    },
                                  ),
                                ),
                                topTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                rightTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                              ),
                              borderData: FlBorderData(show: false),
                              gridData: const FlGridData(show: false),
                              barGroups: [
                                // Sample data for each month (you can adjust these values)
                                BarChartGroupData(
                                  x: 0,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 10,
                                      color: Colors.grey.shade800,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 1,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 8,
                                      color: Colors.grey.shade700,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 2,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 12,
                                      color: Colors.grey.shade600,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 3,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 7,
                                      color: Colors.grey.shade500,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 4,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 9,
                                      color: Colors.grey.shade400,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 5,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 6,
                                      color: Colors.grey.shade300,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 6,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 11,
                                      color: Colors.grey.shade800,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 7,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 8,
                                      color: Colors.grey.shade700,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 8,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 10,
                                      color: Colors.grey.shade600,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 9,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 5,
                                      color: Colors.grey.shade500,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 10,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 7,
                                      color: Colors.grey.shade400,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 11,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 9,
                                      color: Colors.grey.shade300,
                                      width: 16,
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
