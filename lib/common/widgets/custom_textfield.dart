import 'package:flutter/material.dart';
import 'package:sole_swap/common/size_box/custom_sizebox.dart';
import '../app_color/app_colors.dart';
import '../app_text_style/styles.dart';

class CustomTextField extends StatelessWidget {
  final double? height;
  final double? width;
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final Widget? sufIcon;
  final Widget? preIcon;
  final ValueChanged<String>? onChange;
  final double borderRadius;
  final Color? containerColor;
  final Color? borderColor;

  const CustomTextField({
    super.key,
    this.height = 48,
    this.width = double.infinity,
    this.controller,
    this.labelText,
    this.hintText,
    this.hintTextStyle,
    this.sufIcon,
    this.preIcon,
    this.onChange,
    this.borderRadius = 12,
    this.containerColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          Text(
            labelText!,
            style: h5.copyWith(color: AppColors.black), // Use your style
          ),
          sh8, // Space between label and text field
        ],
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: borderColor ?? AppColors.borderColor),
            color: containerColor,
          ),
          child: TextField(
            textInputAction: TextInputAction.done,
            onChanged: onChange,
            controller: controller,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: hintText ?? '',
              hintStyle: hintTextStyle ?? h5.copyWith(color: AppColors.grey),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              prefixIcon: preIcon,
              suffixIcon: sufIcon,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
