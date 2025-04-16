import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NotificationsView extends GetView {
  const NotificationsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotificationsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NotificationsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
