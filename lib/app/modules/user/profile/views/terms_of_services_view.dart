import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TermsOfServicesView extends GetView {
  const TermsOfServicesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TermsOfServicesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TermsOfServicesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
