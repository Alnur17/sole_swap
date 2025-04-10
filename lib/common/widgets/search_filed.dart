import 'package:flutter/material.dart';
import 'package:sole_swap/common/app_images/app_images.dart';
import 'custom_textfield.dart';


class SearchFiled extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchFiled({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      preIcon: Image.asset(AppImages.search,scale: 4,),
      onChange: onChanged,
      hintText: 'Search your sneakers',
      borderRadius: 30,
    );
  }
}
