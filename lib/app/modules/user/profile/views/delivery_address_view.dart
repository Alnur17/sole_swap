import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DeliveryAddressView extends GetView {
  const DeliveryAddressView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliveryAddressView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DeliveryAddressView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
