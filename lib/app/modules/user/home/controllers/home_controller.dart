import 'package:get/get.dart';

import '../../../../../common/app_images/app_images.dart';

class HomeController extends GetxController {

  // var images = <String>[].obs;
  //
  // @override
  // void onInit() {
  //   super.onInit();
  //   images.addAll([
  //     AppImages.productImage,
  //     AppImages.onboardingOne,
  //     AppImages.onboardingTwo,
  //   ]);
  // }

  var currentIndex = 0.obs;

  // Method to update the current index when the carousel page changes
  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  // Method to handle the "Rent now" button press
  void onRentNowPressed() {
    // Navigate to another page or show a dialog
    Get.snackbar(
      "Rent Now",
      "Navigating to rental page...",
      snackPosition: SnackPosition.BOTTOM,
    );
    // Example: Navigate to a rental page (you can create another module for this)
    // Get.toNamed('/rental');
  }

}
