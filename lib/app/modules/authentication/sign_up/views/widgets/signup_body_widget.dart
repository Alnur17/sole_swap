import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sole_swap/common/app_images/app_images.dart';

import '../../../../../../common/app_color/app_colors.dart';
import '../../../../../../common/app_text_style/styles.dart';
import '../../../../../../common/helper/upload_widget.dart';
import '../../../../../../common/size_box/custom_sizebox.dart';
import '../../../../../../common/widgets/custom_textfield.dart';
import '../../controllers/sign_up_controller.dart';

class SignupBodyWidget extends StatefulWidget {
  const SignupBodyWidget({super.key});

  @override
  State<SignupBodyWidget> createState() => _SignupBodyWidgetState();
}

class _SignupBodyWidgetState extends State<SignupBodyWidget> {
  final SignUpController signupController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(AppImages.profile),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    debugPrint('camera tapped');
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: AppColors.whiteDark,
                    ),
                    child: Image.asset(
                      AppImages.camera,
                      scale: 4,
                    ),
                  ),
                ),
              ),
            ],
          ),
          sh16,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildRadioOption('User', 'user'),
              _buildRadioOption('Vendor', 'vendor'),
            ],
          ),
          sh16,
          Obx(
            () => signupController.selectedRole.value == 'user'
                ? _buildUserInterface()
                : signupController.selectedRole.value == 'vendor'
                    ? _buildVendorInterface()
                    : SizedBox.shrink(),
          ),
          sh16,
        ],
      ),
    );
  }

  Widget _buildRadioOption(String label, String value) {
    return Row(
      children: [
        Obx(
          () => Radio(
            value: value,
            groupValue: signupController.selectedRole.value,
            onChanged: (role) => signupController.selectRole(role!),
            activeColor: AppColors.green,
          ),
        ),
        Text(label, style: h4),
      ],
    );
  }

  Widget _buildUserInterface() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hintText: 'First name',
              ),
            ),
            sw12,
            Expanded(
              child: CustomTextField(
                hintText: 'Last name',
              ),
            ),
          ],
        ),
        sh8,
        CustomTextField(
          //preIcon: Image.asset(AppImages.message, scale: 4),
          hintText: 'Enter your email',
        ),
        sh8,
        CustomTextField(
          //preIcon: Image.asset(AppImages.message, scale: 4),
          hintText: 'Enter your location',
        ),
        sh8,
        CustomTextField(
          //preIcon: Image.asset(AppImages.message, scale: 4),
          hintText: 'Enter your number',
        ),
        sh8,
        CustomTextField(
          //preIcon: Image.asset(AppImages.lock, scale: 4),
          hintText: 'Enter your password',
        ),
        sh8,
        CustomTextField(
          //preIcon: Image.asset(AppImages.lock, scale: 4),
          hintText: 'Confirm your password',
        ),
      ],
    );
  }

  Widget _buildVendorInterface() {
    return Column(
      children: [
        CustomTextField(
          hintText: 'Shop name',
        ),
        sh8,
        CustomTextField(
          height: 100,
          hintText: 'Shop Description',
        ),
        sh8,
        CustomTextField(
          hintText: 'saiidromea@gmail.com',
        ),
        sh8,
        CustomTextField(
          hintText: 'Enter your location',
        ),
        sh8,
        CustomTextField(
          hintText: 'Enter your number',
        ),
        sh8,
        UploadWidget(
          onTap: () {},
          imagePath: AppImages.add,
          label: 'Upload Cover Photo',
        ),
        sh8,
        UploadWidget(
          onTap: () {},
          imagePath: AppImages.add,
          label: 'Upload Tax Document',
        ),
        sh8,
        CustomTextField(
          hintText: 'Enter your password',
        ),
        sh8,
        CustomTextField(
          //preIcon: Image.asset(AppImages.lock, scale: 4),
          hintText: 'Confirm your password',
        ),
      ],
    );
  }
}
