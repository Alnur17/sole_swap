import 'package:flutter/material.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';
import 'package:sole_swap/common/app_text_style/styles.dart';

class VendorOrderCard extends StatelessWidget {
  final String image;
  final String name;
  final String size;
  final String? date;

  const VendorOrderCard({
    super.key,
    required this.image,
    required this.name,
    required this.size,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.whiteDark,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                image,
                width: 120,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Summary',
                    style: h3.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: 4),
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(size, style: TextStyle(color: Colors.grey)),
                  if (date != null) ...[
                    SizedBox(height: 4),
                    Text(date!, style: TextStyle(color: Colors.grey)),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
