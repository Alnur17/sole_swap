import 'package:flutter/material.dart';

import '../app_text_style/styles.dart';
import '../size_box/custom_sizebox.dart';

class ReviewCard extends StatelessWidget {
  final String profileImageUrl;
  final String name;
  final String ratingImagePath;
  final String reviewText;
  final VoidCallback? onTap;

  const ReviewCard({
    super.key,
    required this.profileImageUrl,
    required this.name,
    required this.ratingImagePath,
    required this.reviewText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(profileImageUrl),
              ),
              sw12,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: h3,
                  ),
                  sh5,
                  Image.asset(
                    ratingImagePath,
                    scale: 4,
                  ),
                ],
              ),
            ],
          ),
          sh12,
          Text(
            reviewText,
            style: h5,
          ),
        ],
      ),
    );
  }
}
