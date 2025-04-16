import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SignOutView extends GetView {
  const SignOutView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignOutView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SignOutView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
