import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxList<Map<String, dynamic>> orders = [
    {
      "productName": "Nike Air Force 1",
      "price": "533",
      "imageUrl": "https://example.com/nike_air_force_1.png",
      "status": "Active",
    },
    {
      "productName": "Puma RS-X3",
      "price": "517",
      "imageUrl": "https://example.com/puma_rs_x3.png",
      "status": "Active",
    },
    {
      "productName": "Nike Air Force 1",
      "price": "533",
      "imageUrl": "https://example.com/nike_air_force_1.png",
      "status": "Completed",
    },
    {
      "productName": "Puma RS-X3",
      "price": "517",
      "imageUrl": "https://example.com/puma_rs_x3.png",
      "status": "Completed",
    },
    {
      "productName": "Nike Air Force 1",
      "price": "533",
      "imageUrl": "https://example.com/nike_air_force_1.png",
      "status": "Cancelled",
    },
    {
      "productName": "Puma RS-X3",
      "price": "517",
      "imageUrl": "https://example.com/puma_rs_x3.png",
      "status": "Cancelled",
    },
  ].obs;

  void updateOrderStatus(int index, String newStatus) {
    var updatedOrder = {...orders[index]}; // Create a copy of the order
    updatedOrder["status"] = newStatus; // Modify status
    orders[index] = updatedOrder; // Update the list
    orders.refresh(); // Notify UI
  }
}