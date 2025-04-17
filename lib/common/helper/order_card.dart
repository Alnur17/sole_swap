import 'package:flutter/material.dart';
import 'package:sole_swap/common/app_color/app_colors.dart';

class OrderCard extends StatelessWidget {
  final String image;
  final String name;
  final String size;
  final String? date;
  final String price;
  final String? status;
  final VoidCallback? onStatusTap;

  const OrderCard({
    super.key,
    required this.image,
    required this.name,
    required this.size,
    this.date,
    required this.price,
    this.status,
    this.onStatusTap,
  });

  @override
  Widget build(BuildContext context) {
    Color? statusColor;
    String? statusText;
    if (status != null) {
      switch (status) {
        case "Active":
          statusColor = Colors.yellow[700];
          statusText = "Track Order";
          break;
        case "Completed":
          statusColor = Colors.green;
          statusText = "Review";
          break;
        case "Canceled":
          statusColor = Colors.red;
          statusText = "Canceled";
          break;
        default:
          statusColor = Colors.grey;
          statusText = "";
      }
    }

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
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(size, style: TextStyle(color: Colors.grey)),
                  if (date != null) ...[
                    SizedBox(height: 4),
                    Text(date!, style: TextStyle(color: Colors.grey)),
                  ],
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (status != null && statusText != null && statusColor != null)
                        GestureDetector(
                          onTap: onStatusTap, // Added onTap for the status button
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: statusColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              statusText,
                              style: TextStyle(
                                color: statusColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}