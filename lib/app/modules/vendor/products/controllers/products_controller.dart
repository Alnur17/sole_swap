import 'package:get/get.dart';
import 'package:sole_swap/common/app_images/app_images.dart';

class ProductsController extends GetxController {
  var selectedTab = 'Trending'.obs; // Default to 'Trending'

  // Sample data for each tab (list of products)
  final trendingProducts = [
    {'name': 'Air Jordan 1', 'price': '33', 'imagePath': AppImages.productTrending},
    {'name': 'Nike Dunk Low', 'price': '40', 'imagePath': AppImages.productRedWhiteNike},
    {'name': 'Nike Air Max', 'price': '45', 'imagePath':  AppImages.productTrending},
  ].obs;

  final newProducts = [
    {'name': 'Adidas Ultraboost', 'price': '35', 'imagePath':  AppImages.productRedWhiteNike},
    {'name': 'Puma RS-X', 'price': '38', 'imagePath':  AppImages.productTrending},
    {'name': 'New Balance 550', 'price': '42', 'imagePath':  AppImages.productRedWhiteNike},
  ].obs;

  // Function to update the selected tab
  void updateTab(String tab) {
    selectedTab.value = tab;
  }

  // Function to get the current products based on the selected tab
  List<Map<String, String>> get currentProducts {
    return selectedTab.value == 'Trending' ? trendingProducts : newProducts;
  }
}
