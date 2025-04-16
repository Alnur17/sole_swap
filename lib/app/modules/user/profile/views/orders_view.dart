import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OrdersView extends GetView {
  const OrdersView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrdersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OrdersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
