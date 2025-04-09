import 'package:get/get.dart';

import '../controllers/phone_sign_up_controller.dart';

class PhoneSignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneSignUpController>(
      () => PhoneSignUpController(),
    );
  }
}
