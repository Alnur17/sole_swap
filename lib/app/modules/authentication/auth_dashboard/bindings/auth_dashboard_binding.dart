import 'package:get/get.dart';

import '../controllers/auth_dashboard_controller.dart';

class AuthDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthDashboardController>(
      () => AuthDashboardController(),
    );
  }
}
