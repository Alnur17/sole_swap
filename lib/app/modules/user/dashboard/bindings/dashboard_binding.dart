import 'package:get/get.dart';
import 'package:sole_swap/app/modules/user/dashboard/controllers/dashboard_controller.dart';



class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}
