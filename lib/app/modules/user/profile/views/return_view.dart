import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ReturnView extends GetView {
  const ReturnView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReturnView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ReturnView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
