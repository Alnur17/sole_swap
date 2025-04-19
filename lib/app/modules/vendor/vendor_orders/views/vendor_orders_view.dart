import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vendor_orders_controller.dart';

class VendorOrdersView extends GetView<VendorOrdersController> {
  const VendorOrdersView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VendorOrdersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VendorOrdersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
