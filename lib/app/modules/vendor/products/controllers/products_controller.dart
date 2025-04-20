import 'package:get/get.dart';

class ProductsController extends GetxController {

  var selectedTab = 'Trending'.obs; // Default to 'Trending'

  // Sample data for each tab
  final String trendingData = 'List of Trending Sneakers:\n- Air Jordan 1\n- Nike Dunk Low';
  final String newData = 'List of New Sneakers:\n- Adidas Ultraboost\n- Puma RS-X';

  // Function to update the selected tab
  void updateTab(String tab) {
    selectedTab.value = tab;
  }
}
